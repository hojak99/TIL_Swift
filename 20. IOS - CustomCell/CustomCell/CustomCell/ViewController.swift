//
//  ViewController.swift
//  CustomCell
//
//  Created by iquest on 3/28/18.
//  Copyright © 2018 kjh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var itemList = [[String:String]]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        let item1 = ["name": "사과", "image": "weather_01.jpeg", "amount" : "6", "value" : "3000원"];
        let item2 = ["name": "자몽", "image": "weather_02.jpg", "amount" : "1", "value" : "9000원"];
        let item3 = ["name": "키위", "image": "weather_03.jpg", "amount" : "22", "value" : "30100원"];
        let item4 = ["name": "오렌지", "image": "weather_02.jpg", "amount" : "1", "value" : "30000원"];
        let item5 = ["name": "배", "image": "weather_03.jpg", "amount" : "5", "value" : "3050원"];
        let item6 = ["name": "딸기", "image": "weather_01.jpeg", "amount" : "44", "value" : "2000원"];
        let item7 = ["name": "삼겹살", "image": "weather_03.jpg", "amount" : "90", "value" : "1000원"];
        let item8 = ["name": "목살", "image": "weather_02.jpg", "amount" : "10", "value" : "3090원"];

        itemList = [item1, item2, item3, item4, item5, item6, item7, item8];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCell;
        let dicTemp = itemList[indexPath.row];
        
        cell.nameLabel.text = dicTemp["name"];
        cell.amountLabel.text = dicTemp["amount"];
        cell.valueLabel.text = dicTemp["value"];
        
        cell.imgView.image = UIImage(named:dicTemp["image"]!);
        return cell;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.count;
    }
}

