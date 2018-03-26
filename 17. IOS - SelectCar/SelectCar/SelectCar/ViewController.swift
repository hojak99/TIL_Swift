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
        
        model = human;
        imageView.layer.cornerRadius = 50.0;
        imageView.layer.masksToBounds = true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
        컴포넌트 몇개 만드는지 return 하면 된다.
        여기서 컴포넌트는 칸? 을 생각하면 된다.
        만약 3을 리턴하면 pickerView 는 ["human", "animal"], ["dog", "panda", "cat", "etc", "man", "girl"], [~] 로 생성이 될 것이다.
     */
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            // 첫 번째 component 에는 groupName 배열의 값이 들어감
            return groupName[row];
        } else {
            // 두 번째 component 부터는 animal 배열의 값과, human 배열의 값이 들어간다.
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
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 && row == 0 {
            model = human;
        } else if component == 0 && row == 1 {
            model = animal;
        }
        
        pickerView.reloadAllComponents();
    }
}

