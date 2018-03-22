//
//  ViewController.swift
//  FlightBooking
//
//  Created by iquest on 3/21/18.
//  Copyright © 2018 kjh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var departureDateButton: UIButton!;
    @IBOutlet weak var returnDateLabel: UILabel!;
    @IBOutlet weak var returnDateButton: UIButton!;
    @IBOutlet weak var selectDatePicker: UIDatePicker!
    
    var buttonTag: Int = 1;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        returnDateLabel.isHidden = true;
        returnDateButton.isHidden = true;
        selectDatePicker.isHidden = true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showDatePickerAction(_ sender: UIButton) {
       
        if selectDatePicker.isHidden == false {
            selectDatePicker.isHidden = true;
        } else {
            selectDatePicker.isHidden = false;
        }
        buttonTag = sender.tag;
    }
   
    // (_ sender: UISwitch) 로도 가능
    @IBAction func showReturnDateAction(_ sender: UISwitch) {
        
        returnDateButton.isHidden = !sender.isOn;
        returnDateLabel.isHidden = !sender.isOn;
        
//        형변환하는 코드
//        if (sender as! UISwitch).isOn {
//            returnDateButton.isHidden = false;
//            returnDateLabel.isHidden = false
//        } else {
//            returnDateLabel.isHidden = true;
//            returnDateButton.isHidden = true;
//        }
        
//        if returnDateButton.isHidden == true {
//            returnDateButton.isHidden = false;
//            returnDateLabel.isHidden = false
//        } else {
//            returnDateLabel.isHidden = true;
//            returnDateButton.isHidden = true;
//        }
    }
    
    @IBAction func selectedDateAction(_ sender: UIDatePicker) {
        let formatter = DateFormatter();
        formatter.dateFormat = "YY-MM-d hh:mma";
        
        let dateString = formatter.string(from: sender.date);
        print(dateString);
        
        if buttonTag == 1 {
            departureDateButton.setTitle(dateString, for: UIControlState.normal);
        } else {
            returnDateButton.setTitle(dateString, for: UIControlState.normal)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true);
        selectDatePicker.isHidden = true;
    }
}

