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
    @IBOutlet weak var toggleButton : UIButton!;
    @IBOutlet weak var speedSlider : UISlider!;
    @IBOutlet weak var speedLabel : UILabel!;
    
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
        speedLabel.text = String(format: "%.2f", speedSlider.value);
        
    }

    @IBAction func speedSliderAction(_ sender : Any) {
        imgView.animationDuration = Double(speedSlider.value);
        
        // 값 변경되면 멈추기 때문.
        toggleButton.setTitle("STOP", for: UIControlState.normal);
        imgView.startAnimating();
        
        // 소수점 2째자리
        speedLabel.text = String(format: "%.2f", speedSlider.value);
    }
    
    @IBAction func toggleButton(_ sender : Any) {
        if imgView.isAnimating == true {
            imgView.stopAnimating();
            toggleButton.setTitle("START", for: UIControlState.normal);
        } else {
            imgView.startAnimating();
            toggleButton.setTitle("STOP", for: UIControlState.normal);
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

