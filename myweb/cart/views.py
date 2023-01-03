from django.shortcuts import render,redirect 

from django.http import HttpResponseRedirect

from cart import models

from product.models import Goods

from django.utils.html import format_html


#嵌入ECPay 的SDK

import os
basedir = os.path.dirname(__file__)  # 抓取預設目錄位置
file = os.path.join(basedir,'ecpay_payment_sdk.py')

import importlib.util
spec = importlib.util.spec_from_file_location(
    "ecpay_payment_sdk",
    file
)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
from datetime import datetime






# Create your views here.

cartlist = list() # 購物車的內容
customname = "" #客戶姓名
customphone = "" #客戶電話
customaddress = "" #客戶地址
customemail = "" # 客戶email

orderTotal = 0 # 消費總額
goodsTitle = list() # 存放放入購物車的商品名稱

# 這個是加入到購物車中，並未將商品資訊寫入至資料庫中
def addtocart(request,ctype=None,productid=None):
    global cartlist
    
    if ctype=="add":  # 將商品加入至購物車中
        product = Goods.objects.get(id=productid)  
        # 會用get 是因為帶入的產品ID 一定有在資料表車
        flag = True  # 預設購物車中沒有相同的商品，表示購物車內這個商品不存在
        
        #檢查購物車中的商品是否有重覆
        for unit in cartlist:
            if product.name == unit[0]:  # 表示有這個商品
                unit[2] = str(int(unit[2]) + 1) #數量再加1
                unit[3] = str(int(unit[3]) + product.price) # 累計金額
                flag = False # 表示商品之前已經加入至購物車中
                break
        
        if flag:  # 在購物車中沒有此商品
            templist = list()
            templist.append(product.name)
            templist.append(str(product.price))
            templist.append('1')
            templist.append(str(product.price))
            cartlist.append(templist)
            
            
        # unit[0]  商品名稱
        # unit[1]  價格
        # unit[2]  數量
        # unit[3]  總價
        
        request.session['cartlist'] = cartlist # 將購物車內容存入到Session 中     Session 是可以將資料儲存在伺服器端，當瀏覽器關閉時，資料就會被清除
        
        return redirect('/cart/')  # 跳轉至此網址
    elif ctype == "update":  # 修改購物車數量
        n = 0
        for unit in cartlist: # 將購物車的內容抓出來，並修改數量和總價
        
            amount = request.POST.get('qty'+str(n),'1')
            if len(amount) == 0:
                amount = '1'
            if int(amount) <= 0 :
                amount = '1'
            
            unit[2] = amount # 抓取 qty0,qty1..qty5, 預設數量是1
            unit[3] = str( int(unit[1]) * int(unit[2]) )
            n += 1
            
        request.session['cartlist'] = cartlist
        return redirect('/cart/')
    
    elif ctype == "empty":
        cartlist = list()  # 重新指向空的串列
        request.session['cartlist'] = cartlist
        return redirect('/cart/')
    
    elif ctype == "remove":
        del cartlist[int(productid)]  # 將被入的商品索引值刪除
        request.session['cartlist'] = cartlist
        return redirect('/cart/')
    
    
    # redirect 直接跳到指定的網址去，並沒有帶任何參數過去
    # render 跳到指定的網址去，並將要求 (request) 將參數內容傳過去給網頁
        
        
        




def cart(request):  # 顯示購物車內容
    global cartlist
    allcart = cartlist
    total = 0
    for unit in cartlist:
        total += int(unit[3])
    grandtotal = total + 100  # 預設運費為100元
    return render(request,'cart.html',locals())




def cartorder(request):  #結帳
    # 當要結帳時，是要登入後，才可以結帳。  先不做登入
    
    #12/1 補上登入
    if "myMail" in request.session and "isAlive" in request.session:
        global cartlist,customname,customphone,customaddress,customemail
        total = 0
        allcart = cartlist
        for unit in cartlist:
            total += int(unit[3])
        grandtotal = total + 100  # 加運費
        
        name = customname
        phone = customphone
        address = customaddress
        email = request.session['myMail']
        
        return render(request,'cartorder.html',locals())
    else:
        
        return HttpResponseRedirect('/login')



def cartok(request): # 已確認資料並送出的。所以會將訂單寫入到資料庫
    global cartlist,customname,customphone,customaddress,customemail
    
    global orderTotal,goodsTitle
    
    total = 0
    for unit in cartlist:
        total += int(unit[3])
    grandtotal = total + 100
    
    orderTotal = grandtotal
    
    customname = request.POST.get('cuName','')
    customphone = request.POST.get('cuPhone','')
    customaddress = request.POST.get('cuAddr','')
    customemail = request.POST.get('cuEmail','')
    payType = request.POST.get('payType','')
    
    #新增資料至訂單資料表中
    # 星期四要教補欄位：地址
    unitorder = models.OrdersModel.objects.create(subtotal=total,shipping=100,grandtotal=grandtotal,customname=customname,customemail=customemail,customphone=customphone,customaddress=customaddress,paytype=payType)
    
    #要將各個的商品新增到 明細表
    for unit in cartlist:
        goodsTitle.append(unit[0]) # 將要買的商品名稱新增至goodsTitle中
        total = int(unit[1]) * int(unit[2])
        unitdetail = models.DetailModel.objects.create(dorder=unitorder,pname=unit[0],unitprice=unit[1],quantity=unit[2],dtotal=total)
        
    orderid = unitorder.id   # 取得訂單編號
    name = unitorder.customname
    email = unitorder.customemail
    cartlist = list()
    request.session['cartlist'] = cartlist

    if payType == "信用卡":
    	return HttpResponseRedirect('/creditcard',locals())  # 導至信用卡頁
    else:	
        return render(request,'cartok.html',locals()) 
    
    

def cartordercheck(request):  # 訂單完成後，可以作訂單查詢用
    orderid = request.GET.get('orderid','')
    customemail = request.GET.get('customemail','')
    
    if orderid == '' and customemail == '':
        nosearch = 1
    else:
        order = models.OrdersModel.objects.filter(id=orderid).first() # 抓第一筆資料
        if order == None:
            notfound = 1
        else:
            details = models.DetailModel.objects.filter(dorder=order)
    return render(request,"cartordercheck.html",locals())

def myorder(request):
    
    # 判斷SESSION 是否存在
    # 抓出使用者的購買記錄
    
    if "myMail" in request.session and "isAlive" in request.session:
        email = request.session['myMail']
        
        order = models.OrdersModel.objects.filter(customemail=email)
        
        return render(request,"myorder.html",locals())
    
    else:
        
        return HttpResponseRedirect('/login')



def ECPayCredit(request):
    
    global goodsTitle
    title = ""
    for i in goodsTitle:
        title += i + "#"   # 加 # 是因為商品若為多個時，要用# 隔開
    
    
    order_params = {
        'MerchantTradeNo': datetime.now().strftime("NO%Y%m%d%H%M%S"),
        'StoreID': '',
        'MerchantTradeDate': datetime.now().strftime("%Y/%m/%d %H:%M:%S"),
        'PaymentType': 'aio',
        'TotalAmount': orderTotal,
        'TradeDesc': 'Watson-MeetJob-訂單',
        'ItemName': title,
        'ReturnURL': 'https://www.lccnet.com.tw/lccnet',
        'ChoosePayment': 'Credit',
        'ClientBackURL': 'https://www.lccnet.com.tw/lccnet',
        'ItemURL': 'https://www.ecpay.com.tw/item_url.php',
        'Remark': '交易備註',
        'ChooseSubPayment': '',
        'OrderResultURL': 'https://www.lccnet.com.tw/lccnet',
        'NeedExtraPaidInfo': 'Y',
        'DeviceSource': '',
        'IgnorePayment': '',
        'PlatformID': '',
        'InvoiceMark': 'N',
        'CustomField1': '',
        'CustomField2': '',
        'CustomField3': '',
        'CustomField4': '',
        'EncryptType': 1,
    }
    
    extend_params_1 = {
        'BindingCard': 0,
        'MerchantMemberID': '',
    }
    
    extend_params_2 = {
        'Redeem': 'N',
        'UnionPay': 0,
    }
    
    inv_params = {
        # 'RelateNumber': 'Tea0001', # 特店自訂編號
        # 'CustomerID': 'TEA_0000001', # 客戶編號
        # 'CustomerIdentifier': '53348111', # 統一編號
        # 'CustomerName': '客戶名稱',
        # 'CustomerAddr': '客戶地址',
        # 'CustomerPhone': '0912345678', # 客戶手機號碼
        # 'CustomerEmail': 'abc@ecpay.com.tw',
        # 'ClearanceMark': '2', # 通關方式
        # 'TaxType': '1', # 課稅類別
        # 'CarruerType': '', # 載具類別
        # 'CarruerNum': '', # 載具編號
        # 'Donation': '1', # 捐贈註記
        # 'LoveCode': '168001', # 捐贈碼
        # 'Print': '1',
        # 'InvoiceItemName': '測試商品1|測試商品2',
        # 'InvoiceItemCount': '2|3',
        # 'InvoiceItemWord': '個|包',
        # 'InvoiceItemPrice': '35|10',
        # 'InvoiceItemTaxType': '1|1',
        # 'InvoiceRemark': '測試商品1的說明|測試商品2的說明',
        # 'DelayDay': '0', # 延遲天數
        # 'InvType': '07', # 字軌類別
    }
    
    # 建立實體
    ecpay_payment_sdk = module.ECPayPaymentSdk(
        MerchantID='2000132',
        HashKey='5294y06JbISpM5x9',
        HashIV='v77hoKGq4kWxNNIS'
    )
    
    # 合併延伸參數
    order_params.update(extend_params_1)
    order_params.update(extend_params_2)
    
    # 合併發票參數
    order_params.update(inv_params)
    
    try:
        # 產生綠界訂單所需參數
        final_order_params = ecpay_payment_sdk.create_order(order_params)
    
        # 產生 html 的 form 格式
        action_url = 'https://payment-stage.ecpay.com.tw/Cashier/AioCheckOut/V5'  # 測試環境
        # action_url = 'https://payment.ecpay.com.tw/Cashier/AioCheckOut/V5' # 正式環境
        html = ecpay_payment_sdk.gen_html_post_form(action_url, final_order_params)
        
        html = format_html(html) # 格式化html ，將文字的html 轉換為網頁html
        return render(request,'paycredit.html',locals())
    except Exception as error:
        print('An exception happened: ' + str(error))
    
    
    
    
    
    


