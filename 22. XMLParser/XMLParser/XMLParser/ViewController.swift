//
//  ViewController.swift
//  XMLParser
//
//  Created by iquest on 4/2/18.
//  Copyright © 2018 kjh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, XMLParserDelegate {

    var dataList = [[String:String]]();
    var detailData = [String:String]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/weather.xml";
        
        guard let baseURL = URL(string: urlString) else {
            print("URL error");
            return;
        }
        
        guard let parser = XMLParser(contentsOf: baseURL) else {
            print("Can't read data");
            return;
        }
        
        parser.delegate = self;
        
        // 해당 메소드를 호출해야 파싱한다.
        if !parser.parse() {
            print("Parse failure");
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0;
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
        
        return cell;
    }
    
    
    // 
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        print("didStartElement : \(elementName)");
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        print("foundCharacters : \(string)");
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        print("didEndElement : \(elementName)");
    }
}

