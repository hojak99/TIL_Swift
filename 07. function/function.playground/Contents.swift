//: Playground - noun: a place where people can play

import UIKit

// 리턴타입과 매개변수가 없는 함수
func sayHello() {
    print("Hello");
}
sayHello();     // Hello


// 매개변수만 존재하는 함수
func sayHello2(name: String) {
    print("Hello \(name)");
}
sayHello2(name: "kjh");     // Hello kjh


// 매개변수와 리턴타입이 존재하는 함수
func sayHello3(name:String) -> String {
    return "Hello " + name;
}
var temp = sayHello3(name: "test");
print(sayHello3(name: "hojak"));        // Hello hojak
print(temp);        // hello test


// default 값이 존재하는 함수
func sayHello4(name: String = "default") -> String{
     return "Hello " + name;
}
print(sayHello4());     // Hello default
print(sayHello4(name: "hojak"));        // Hello hojak


// argument label 과 parameter name 이 존재하는 함수
func sayHello5(insertYourName name:String, internationalAge age: Int) {
    print("\(name) is \(age) years old");
}
sayHello5(insertYourName: "hojak", internationalAge: 20);       // hojak is 20 years old


// argument label 를 입력하지 않아도 되도록 셋팅한 함수
func sayHello6(_ name: String, _ age: Int) {
    print("\(name) is \(age) years old");
}
sayHello6("hojak", 5);      // hojak is 5 years old
