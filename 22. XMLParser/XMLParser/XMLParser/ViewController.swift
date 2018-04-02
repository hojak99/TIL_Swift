//
//  ViewController.swift
//  XMLParser
//
//  Created by iquest on 4/2/18.
//  Copyright © 2018 kjh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var dataList = [[String:String]]();
    var detailData = [String:String]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! WeatherCell;
        
        var dicTemp = dataList[indexPath.row];
        cell.countryLabel.text = dicTemp["country"];
        let weatherStr = dicTemp["weather"];
        cell.weatherLabel.text = weatherStr;
        cell.temperatureLabel.text = dicTemp["temperature"];
        
        if weatherStr == "흐림" {
            cell.imgView.image = UIImage(named: "weather_01.jpeg");
        } else if weatherStr == "태풍" {
            cell.imgView.image = UIImage(named: "weather_03.jpg");
        } else if weatherStr == "맑음" {
            cell.imgView.image = UIImage(named: "weather_02.jpg");
        }
        
    }
}

