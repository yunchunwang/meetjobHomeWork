from django.shortcuts import render

# Create your views here.
from .models import Goods

from django.core.paginator import Paginator,EmptyPage,PageNotAnInteger

def shop(request):
    
    goodsname = ''
    sPrice = ''
    ePrice = ''
    
    if 'p' in request.GET:
        goodsName = request.GET['p']
        sPrice = request.GET['priceS']
        ePrice = request.GET['priceE']
        
        # 有產品名
        if ( len(goodsName) > 0 ):
            # 無價格範圍
            if ( len(sPrice) == 0 and len(ePrice) == 0):
                allGoods = Goods.objects.filter(name__icontains=goodsName).order_by('-id')
            # 有價格範圍
            elif ( len(sPrice) > 0 and len(ePrice) > 0):
                allGoods = Goods.objects.filter(name__icontains=goodsName,price__gte=sPrice,price__lte=ePrice).order_by('-id')         
        
        # 無產品名
        elif ( len(goodsName) == 0 ):
            # 有價格範圍
            if ( len(sPrice) > 0 and len(ePrice) > 0):
                allGoods = Goods.objects.filter(price__gte=sPrice,price__lte=ePrice).order_by('-id')
        
            # 無價格範圍   
            else:
                # 抓取全部資料 以id做遞減排序
                allGoods = Goods.objects.all().order_by('-id')
            
    else:
        # 抓取全部資料 以id做遞減排序
        allGoods = Goods.objects.all().order_by('-id')
    
    paginator = Paginator(allGoods,20)
    page = request.GET.get('page')
    try:
        allGoods = paginator.page(page)
    except PageNotAnInteger:
        allGoods = paginator.page(1)
    except EmptyPage:
        allGoods = paginator.page(paginator.num_pages)
    
    
    return render(request,'product.html',locals())