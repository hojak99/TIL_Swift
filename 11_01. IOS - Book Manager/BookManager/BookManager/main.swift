//
//  main.swift
//  BookManager
//
//  Created by iquest on 3/13/18.
//  Copyright © 2018 kjh. All rights reserved.
//
//  도서관리프로그램

import Foundation

var book1 = Book(title: "신과함께", field: "웹툰", author: "주호민");
var book2 = Book(title: "모든 순간이 너였다 ", field: "시/에세이", author: "하태완");
var book3 = Book(title: "나미야 잡화점의 기적", field: "추리소설", author: "히가시노 게이고");

/*
 Name : 신과함께
 Genre : 감동
 author : 주호민
 */
book1.bookPrint();

/*
 Name : 모든 순간이 너였다
 Genre : 시/에세이
 author : 하태완
 */
book2.bookPrint();

/*
 Name : 나미야 잡화점의 기적
 Genre : 추리소설
 author : 히가시노 게이고
 */
book3.bookPrint();
