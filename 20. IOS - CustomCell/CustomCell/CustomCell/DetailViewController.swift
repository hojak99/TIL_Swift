//
//  DetailViewController.swift
//  CustomCell
//
//  Created by iquest on 3/29/18.
//  Copyright © 2018 kjh. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var detailData = [String:String]();
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.layer.cornerRadius = 50.0;
        imgView.layer.masksToBounds = true;
        
        nameLabel.text = detailData["name"];
        amountLabel.text = detailData["amount"];
        valueLabel.text = detailData["value"];
        
        imgView.image = UIImage(named:detailData["image"]!);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
