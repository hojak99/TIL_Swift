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


var library = BookManager();
library.registerBook(newBook: book1);
library.registerBook(newBook: book2);
library.registerBook(newBook: book3);

// 책에 대한 정보들이 출력된다.
print(library.showAllBooks());
print("library count : \(library.countBook())");

var searchResult = library.searchBook(bookName: "나미야 잡화점의 기적");

if searchResult != nil {
    print("\(searchResult!) 란 책 존재");
} else {
    print("책 존재하지 않음");
}

print(library.removeBook(title: "나미야 잡화점의 기적"));
