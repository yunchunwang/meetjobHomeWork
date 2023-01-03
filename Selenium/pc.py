# -*- coding: utf-8 -*-
"""
Created on Sat Dec 31 16:26:07 2022

@author: Sunny
"""
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
import time

from bs4 import BeautifulSoup

from pymysql.converters import escape_string 

import db

from datetime import datetime as dt

today = dt.today()
todayS = today.strftime('%Y-%m-%d')

options = Options()
options.add_argument("--disable-notifications")
 
chrome = webdriver.Chrome('chromedriver', chrome_options=options)
chrome.implicitly_wait(10)
chrome.get("https://ecshweb.pchome.com.tw/search/v3.3/?q=%E5%AF%B5%E7%89%A9%E7%94%A8%E5%93%81&scope=all")


for x in range(1, 5):
    chrome.execute_script("window.scrollTo(0,document.body.scrollHeight)")
    time.sleep(2)
    

soup = BeautifulSoup(chrome.page_source, 'html.parser')

goods = soup.find_all('dl',class_='col3f')

cursor = db.conn.cursor()


for row in goods:
    link = row.find('a').get('href')
    photo = row.find('img').get('src')
    title = row.find('img').get('title')
    title = escape_string(title)
    price = row.find('span',class_='value').text
    
    print(title)
    print(price)
    print(photo)
    print(link)
    print()    
    

    sql = "select * from goods where name='{}'".format(title)
    
    cursor.execute(sql)
    db.conn.commit()
    
    if cursor.rowcount == 0 :
        sql = "insert into goods(name,price,photo_url,goods_url,create_date) values('{}','{}','{}','{}','{}')".format(title,price,photo,link,todayS)
        cursor.execute(sql)
        db.conn.commit()
        
db.conn.close()
