# -*- coding: utf-8 -*-
"""
Created on Thu Oct 20 21:14:19 2022

@author: Ruby

"""

import dbhw

cursor = dbhw.conn.cursor()

item = input("請輸入： 1 新增員工資料  2 新增工作項目  3 修改員工基本資料  4 查詢員工基本資料  5 查詢員工工作內容")

if item == "1":
    print('新增員工資料')
    name = input('員工姓名：')
    sex = input('員工性別F/M：')
    tel = input('電話號碼：')
    assume = input('就職日期yyyy-mm-dd：')
    
    sql = "insert into employee(name,sex,tel,assume) values('{}','{}','{}','{}')".format(name,sex,tel,assume)
    
    cursor.execute(sql)
    dbhw.conn.commit()

elif item == "2":
    print('新增工作項目')
    items = input('工作項目：')
    info = input('工作詳述：')
    eid = input('對應員工編號ID：')
    
    sql = "insert into works(items,info,employeeid) values('{}','{}','{}')".format(items,info,eid)
    
    cursor.execute(sql)
    dbhw.conn.commit()

elif item == "3":
    print('修改員工基本資料')
    sql = "select id from employee"
    cursor = dbhw.conn.cursor()

    cursor.execute(sql)
    dbhw.conn.commit()

    employees = cursor.fetchall()  # 抓取全部的資料


    for row in employees:
        print('員工編號：',row[0])
        
    eid = input('請輸入員工編號：')
    tel = input('請輸入修改後的號碼：')
    sex = input('請輸入修改後的性別F/M：')
    
    sql = "update employee set tel='{}' , sex='{}' where id = '{}'".format(tel,sex,eid)
    
    cursor.execute(sql)
    dbhw.conn.commit()

elif item == "4":
    print('查詢員工基本資料')
    sql = "select id from employee"
    cursor = dbhw.conn.cursor()

    cursor.execute(sql)
    dbhw.conn.commit()

    employees = cursor.fetchall() 

    for row in employees:
        print('員工編號：',row[0])
        
    eid = input('請輸入員工編號：')
    
    sql = "select * from employee where id='{}'".format(eid)
    
    cursor.execute(sql)
    dbhw.conn.commit()
    
    employee = cursor.fetchall()

    for row in employee:
        print('員工編號：',row[0])
        print('員工姓名：',row[1])
        print('員工性別：',row[2])
        print('聯絡電話：',row[3])
        print('到職日期：',row[4])

elif item == "5":
    print('查詢員工工作內容')
    sql = "select id from employee"
    cursor = dbhw.conn.cursor()

    cursor.execute(sql)
    dbhw.conn.commit()

    employees = cursor.fetchall() 

    for row in employees:
        print('員工編號：',row[0])
        
    eid = input('請輸入員工編號：')
    
    sql = "select e.id,e.name,w.items,w.info from employee e , works w where e.id = '{}' and  w.employeeid = '{}'".format(eid,eid)
    
    cursor.execute(sql)
    dbhw.conn.commit()
    
    work = cursor.fetchall()
    
    for row in work:
        print('員工編號：',row[0])
        print('員工姓名：',row[1])
        print('工作內容：',row[2])
        print('工作詳述：',row[3])
    

print('程式執行完畢')
dbhw.conn.close()

    
    
    