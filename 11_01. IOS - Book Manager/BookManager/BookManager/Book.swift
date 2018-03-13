//
//  Book.swift
//  BookManager
//
//  Created by iquest on 3/13/18.
//  Copyright © 2018 kjh. All rights reserved.
//

/*
    도서관리 프로그램을 만들기 위한 책을 나타내는 struct
 */
struct Book {
    var title: String;      // 책 제목
    var field: String;      // 책 분야
    var author: String;     // 책 저자
    
    /*
        책 정보 출력
    */
    func bookPrint() {
        print("Title : \(title)");
        print("Field : \(field)");
        print("Author : \(author)");
        print("-------------------")
    }
}
