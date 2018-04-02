//
//  ViewController.swift
//  ImageDownloader
//
//  Created by iquest on 4/2/18.
//  Copyright © 2018 kjh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, URLSessionDownloadDelegate {

    
    @IBOutlet weak var imgView: UIActivityIndicatorView!
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    @IBOutlet weak var progressView: UIProgressView!
    
    var downloadTask: URLSessionDownloadTask!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        
    }

    @IBAction func downloadAction(_ sender: Any) {
        let sessionConfiguration = URLSessionConfiguration.default;
        let session = URLSession(configuration: sessionConfiguration, delegate: self, delegateQueue: OperationQueue.main);
        
        downloadTask = session.downloadTask(with: URL(string: "https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg")!);
        
        // 해담 메소드를 호출해야 작업을 시작한다.
        downloadTask.resume();
    }

    @IBAction func suspendAction(_ sender: Any) {
    }
    @IBAction func resumeAction(_ sender: Any) {
    }
    
    @IBAction func cancelAction(_ sender: Any) {
    }
}

