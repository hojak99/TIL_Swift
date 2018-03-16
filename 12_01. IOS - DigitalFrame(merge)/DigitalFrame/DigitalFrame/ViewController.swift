//
//  ViewController.swift
//  DigitalFrame
//
//  Created by iquest on 3/15/18.
//  Copyright © 2018 kjh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let arrImage = [
            UIImage(named: "01.jpg")!,
            UIImage(named: "02.jpg")!,
            UIImage(named: "03.jpg")!,
            UIImage(named: "04.jpg")!,
            UIImage(named: "05.jpg")!
        ];
        
        imgView.animationImages = arrImage;
        imgView.animationDuration = 7;
        
    }

    @IBAction func toggleButton(_ sender : Any) {
        if imgView.isAnimating == true {
            imgView.stopAnimating();
        } else {
            imgView.startAnimating();
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

