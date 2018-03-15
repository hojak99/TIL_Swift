//
//  ViewController.swift
//  VisualBookManager
//
//  Created by iquest on 3/14/18.
//  Copyright © 2018 kjh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var library = BookManager();

    
    /*
        초기화 코드 작성하는 메소드
     */
    override func viewDidLoad() {
    
        let book1 = Book(title: "신과함께", field: "웹툰", author: "주호민");
        let book2 = Book(title: "모든 순간이 너였다 ", field: "시/에세이", author: "하태완");
        let book3 = Book(title: "나미야 잡화점의 기적", field: "추리소설", author: "히가시노 게이고");

        library.registerBook(newBook: book1);
        library.registerBook(newBook: book2);
        library.registerBook(newBook: book3);
    }
    
    /*
        버튼 클릭 시 드 이벤트 메소드
 드   */
    @IBAction func showAllBooksAction(_ sender : Any) {
        print("showAllBooksAction");
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

