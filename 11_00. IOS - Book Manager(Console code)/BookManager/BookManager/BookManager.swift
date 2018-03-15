//
//  BookManager.swift
//  BookManager
//
//  Created by iquest on 3/14/18.
//  Copyright © 2018 kjh. All rights reserved.
//

import Foundation

class BookManager {
    
    // Book struct를 관리할 배열
    var bookList = [Book]();
    
    /*
        책 색성
     */
    func registerBook(newBook: Book) {
        bookList += [newBook];
    }
    
    /*
        모든 책 정보를 반환
     */
    func showAllBooks() -> String {
        // return bookList.description;  다음의 코드는 array  데이터를 출력한다.  Java의 toString() 메소드와 비슷함.
        var strTemp = "";
        for tempBook in bookList {
            strTemp += "Title : \(tempBook.title)\n";
            strTemp += "Field : \(tempBook.field)\n";
            strTemp += "Author : \(tempBook.author)\n";
            strTemp += "-----------------\n";
        }
        return strTemp;
    }
    
    /*
        등록된 책들의 개수를 반환
     */
    func countBook() -> Int{
        return bookList.count;
    }
    
    /*
        등록된 책 정보가 없으면 nil 반환
     */
    func searchBook(bookName: String) -> String? {
        // = "" 와 같은 의미
        var strTemp = String();
        for tempBook in bookList {
            if tempBook.title == bookName {
                strTemp += "Title : \(tempBook.title)\n";
                strTemp += "Field : \(tempBook.field)\n";
                strTemp += "Author : \(tempBook.author)\n";
                strTemp += "-----------------\n";
                return strTemp;
            }
        }
        return nil;
    }
    
    /*
        등록된 책을 삭제
    */
    func removeBook(title: String) -> String {
        for (index, value) in bookList.enumerated() {
            if value.title == title {
                bookList.remove(at: index);
                return "[\(title)] 이란 책을 삭제했습니다."
            }
        }
        return "[\(title) 이란 책을 삭제하지 못 했습니다.]"
    }
}
