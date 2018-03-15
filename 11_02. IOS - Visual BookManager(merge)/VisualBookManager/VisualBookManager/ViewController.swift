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

    @IBOutlet weak var outputTextView: UITextView!;
  
    @IBOutlet weak var titleTextField: UITextField!;
    @IBOutlet weak var fieldTextField: UITextField!;
    @IBOutlet weak var authorTextField: UITextField!;
    
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
        버튼 클릭 시 발생하는 이벤트 메소드
     */
    @IBAction func showAllBooksAction(_ sender : Any) {
//        print("showAllBooksAction");
        outputTextView.text = library.showAllBooks();
    }
    
    // 인터페이스 빌더와 연결하기 위해서 해당 어노테이션 사용해야함
    // "IBAction" 에서 IB 는 "인터페이스 빌더"의 약자
    @IBAction func registerAction(_ sender : Any) {
        var tempBook = Book();
        
        tempBook.title = titleTextField.text!;
        tempBook.field = fieldTextField.text!;
        tempBook.author = authorTextField.text!;
        
        library.registerBook(newBook: tempBook);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

