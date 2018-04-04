//
//  ViewController.swift
//  ImageDownloader
//
//  Created by iquest on 4/2/18.
//  Copyright © 2018 kjh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, URLSessionDownloadDelegate {

    
    @IBOutlet weak var imgView: UIImageView!
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
        let tempData:Data = try! Data(contentsOf: location);
        self.imgView.image = UIImage(data: tempData);
        
        indicatorView.stopAnimating();
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        let progress:Float = Float(totalBytesWritten) / Float(totalBytesExpectedToWrite);
        self.progressView.setProgress(progress, animated: true);
    }

    @IBAction func downloadAction(_ sender: Any) {
        imgView.image = nil;
        indicatorView.startAnimating();
        
        let sessionConfiguration = URLSessionConfiguration.default;
        let session = URLSession(configuration: sessionConfiguration, delegate: self, delegateQueue: OperationQueue.main);
        
        // adownloadTask = session.downloadTask(with: URL(string: "https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg")!);
        
        downloadTask = session.downloadTask(with: URL(string: "https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg")!, completionHandler: {(data, response, error) -> Void in
            let tempData:Data = try! Data(contentsOf: data!);
            self.imgView.image = UIImage(data: tempData);
            
            self.indicatorView.stopAnimating();
        })
        
        // 해담 메소드를 호출해야 작업을 시작한다.
        downloadTask.resume();
    }

    @IBAction func suspendAction(_ sender: Any) {
        downloadTask.suspend();
    }
    @IBAction func resumeAction(_ sender: Any) {
        downloadTask.resume();
    }
    
    @IBAction func cancelAction(_ sender: Any) {
        downloadTask.cancel();
        progressView.setProgress(0.0, animated: false);
        indicatorView.stopAnimating();
    }
}

