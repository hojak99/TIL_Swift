//
//  ViewController.swift
//  SignUpForm
//
//  Created by iquest on 3/16/18.
//  Copyright © 2018 kjh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!;
    @IBOutlet weak var emailTextField: UITextField!;
    @IBOutlet weak var passwordTextField: UITextField!;
    @IBOutlet weak var telTextField: UITextField!;
    @IBOutlet weak var blogTextField: UITextField!;
    @IBOutlet weak var outputTextView: UITextView!;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        // delegate 등록을 해줘야함
        // nameTextField.delegate = self;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func signUpAction(_ sender: Any) {
        outputTextView.text = "\(nameTextField.text!) 님 가입을 축하합니다.";
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // 화면 클릭 시 키보드 자동으로 내려가도록
        self.view.endEditing(true);
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // "Done" 버튼 누를 시 다음 textField 로 내려가도록
        textField.resignFirstResponder();
        return true;
    }
    
}

