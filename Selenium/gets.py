# -*- coding: utf-8 -*-
"""
Created on Tue Dec 27 15:16:41 2022

@author: Sunny
"""

from selenium import webdriver
from selenium.webdriver.chrome.options import Options
import time

from bs4 import BeautifulSoup

from pymysql.converters import escape_string 

import db

options = Options()
options.add_argument("--disable-notifications")
 
chrome = webdriver.Chrome('chromedriver', chrome_options=options)
chrome.implicitly_wait(10)
chrome.get("https://pets.ettoday.net/focus/%E6%96%B0%E8%81%9E%E7%B8%BD%E8%A6%BD")


for x in range(1, 2):
    chrome.execute_script("window.scrollTo(0,document.body.scrollHeight)")
    time.sleep(1)
    

soup = BeautifulSoup(chrome.page_source, 'html.parser')

news = soup.find_all('div',class_= 'piece clearfix')

cursor = db.conn.cursor()

for row in news:
    link = row.find('a',class_= 'pic').get('href')
    title = row.find('a',class_= 'pic').get('title')
    title = escape_string(title)
    photo = row.find('img').get('data-original')
    
    sql = "select * from news where title='{}'".format(title)
    cursor.execute(sql)
    db.conn.commit()
    
    if cursor.rowcount == 0:  # 若查詢的筆數為0
        sql = "insert into news(title,link,photo) values('{}','{}','{}')".format(title,link,photo)
        cursor.execute(sql)
        db.conn.commit()
        
db.conn.close()
    
    
    
