//
//  CustomCell.swift
//  CustomCell
//
//  Created by iquest on 3/29/18.
//  Copyright © 2018 kjh. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    /* viewDidLoad 와 비슷한 함수 (제일 먼저 호출) */
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imgView.contentMode = UIViewContentMode.scaleAspectFill;
        imgView.layer.cornerRadius = 50.0;
        imgView.layer.masksToBounds = true;
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
