//
//  ViewController.swift
//  MiniBrowser
//
//  Created by iquest on 3/20/18.
//  Copyright © 2018 kjh. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var bookMarkSegmentControl: UISegmentedControl!;
    @IBOutlet weak var urlTextField: UITextField!;
    @IBOutlet weak var mainWebView: WKWebView!;
    @IBOutlet weak var spinningActivityIndicatorView: UIActivityIndicatorView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func bookMarkAction(_ sender: Any) {
        
    }
    
    @IBAction func goBackAction(_ sender: Any) {
        
    }
    
    @IBAction func goFowardAction(_ sender: Any) {
    
    }
    
    @IBAction func stopAction(_ sender: Any) {
    
    }
    
    @IBAction func reloadAction(_ sender: Any) {
    
    }
    
}

