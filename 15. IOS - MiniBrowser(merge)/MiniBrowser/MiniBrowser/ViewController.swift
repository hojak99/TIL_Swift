//
//  ViewController.swift
//  MiniBrowser
//
//  Created by iquest on 3/20/18.
//  Copyright © 2018 kjh. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate, WKNavigationDelegate {

    @IBOutlet weak var bookMarkSegmentControl: UISegmentedControl!;
    @IBOutlet weak var urlTextField: UITextField!;
    @IBOutlet weak var mainWebView: WKWebView!;
    @IBOutlet weak var spinningActivityIndicatorView: UIActivityIndicatorView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // spinningActivityIndicatorView.startAnimating();
        
        let initUrl = "http://www.facebook.com";
        let url = URL(string: initUrl);
        let request = URLRequest(url: url!);
        
        mainWebView.load(request);
        
        urlTextField.text = initUrl;
        
        // WebView 는 storyboard 에서 delete 설정이 안되기 때문에 직접 코드로 설정해줘야하 한다.
        mainWebView.navigationDelegate = self;
        
        // 아래의 코드를 작성할 시 페이지가 로드된 후 멈추는게 아니라 바로 멈추게 된다.
        // 그 이유는 위의 mainWebView.load() 메소드가 메인 스레드가 아닌 다른 스레드로 실행이 되는 것이기 때문에
        // startAnimating() 메소드가 실행되고 그 뒤에 load() 메소드가 실행되고 바로 stopAnimating() 메소드가 실행이 된다.
        // spinningActivityIndicatorView.stopAnimating()
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        spinningActivityIndicatorView.startAnimating();
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        spinningActivityIndicatorView.stopAnimating();
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        var urlString = "\(urlTextField.text!)";
        
        // 포함하는지
        if !urlString.hasPrefix("https://") {
            urlString = "https://\(urlTextField.text!)";
        }
        
        urlTextField.text = urlString;
        mainWebView.load(URLRequest(url:URL(string:urlString)!))
        return true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func bookMarkAction(_ sender: Any) {
        // segment 누를 때마다 해당 타이틀 가져옴
        let bookMarkUrl = bookMarkSegmentControl.titleForSegment(at: bookMarkSegmentControl.selectedSegmentIndex);
        
        let urlString = "https://www.\(bookMarkUrl!).com";
        mainWebView.load(URLRequest(url:URL(string:urlString)!))
        urlTextField.text = urlString;
    }
    
    @IBAction func goBackAction(_ sender: Any) {
        mainWebView.goBack();
        
        let url = String(describing:mainWebView.url!);
        urlTextField.text = url;
        
        if url.contains("facebook") == true {
            print("gdg");
            bookMarkSegmentControl.selectedSegmentIndeÅx = 0;
        } else if url.contains("twitter") == true {
            bookMarkSegmentControl.selectedSegmentIndex = 1;
        } else if url.contains("apple") == true {
            bookMarkSegmentControl.selectedSegmentIndex = 2;
        } else if url.contains("google") == true {
            bookMarkSegmentControl.selectedSegmentIndex = 3;
        } else {
            bookMarkSegmentControl.selectedSegmentIndex = UISegmentedControlNoSegment;
        }
        
    }
    
    @IBAction func goFowardAction(_ sender: Any) {
        mainWebView.goForward();
    }
    
    @IBAction func stopAction(_ sender: Any) {
        mainWebView.stopLoading();
    }
    
    @IBAction func reloadAction(_ sender: Any) {
        mainWebView.reload();
    }
    
}

