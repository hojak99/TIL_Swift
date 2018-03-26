//
//  ViewController.swift
//  SelectCar
//
//  Created by iquest on 3/22/18.
//  Copyright © 2018 kjh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var imageView: UIImageView!;
    
    let groupName = ["human", "animal"];
    var model = [String]();
    var modelImage = [String]();        // 이미지뷰에 로딩할 이미지들
    
    let animal = ["dog", "panda", "cat", "etc"];
    let human = ["man", "girl"];
    
    let animalImageNames = ["02.jpg","01.jpg", "04.jpg", "03.jpg"];
    let humanImageNames = ["06.jpg"];
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        model = animal;
        imageView.layer.cornerRadius = 50.0;
        imageView.layer.masksToBounds = true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return groupName[row];
        } else {
            return model[row];
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return groupName.count;
        } else {
            return model.count;
        }
    }
}

