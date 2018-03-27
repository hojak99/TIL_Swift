//
//  ThirdViewController.swift
//  TabbarEX
//
//  Created by iquest on 3/27/18.
//  Copyright © 2018 kjh. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func buttonAction(_ sender: Any) {
        outputLabel.text = "3번 버튼 클릭";
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
