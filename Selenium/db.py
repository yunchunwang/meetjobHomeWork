# -*- coding: utf-8 -*-
"""
Created on Tue Dec 27 15:55:37 2022

@author: Sunny
"""

import pymysql

dbsetting = {
    'host':'127.0.0.1',
    'port':3306,
    'user':'root',
    'password':'123456789',
    'db':'myweb',
    'charset':'utf8'
    }

conn = pymysql.connect(**dbsetting)