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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showDatePickerAction(_ sender: Any) {
    }
   
    @IBAction func showReturnDateAction(_ sender: Any) {
    }
    
    @IBAction func selectedDateAction(_ sender: Any) {
    }
    
    
}

