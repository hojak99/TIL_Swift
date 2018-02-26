//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print("str : \(type(of: str))")     // 변수 str 의 타입 명을 print 해준다. -> "str : String"
print("str : \(str)")

var dob = 0.11;
print("dob : \(type(of: dob))");    // 변수 dob 의 타입 명을 print 해준다. (세미콜론을 붙여줘도 상관없다) -> "dob : Double"
print("dob : \(dob)");

let maximum = 1000
print("maximum : \(type(of: maximum))");    // 변수 maximum 의 타입 명을 print 해준다. -> "maximum : Int"
print("maximum : \(maximum)");

let isSuccess = false
print("isSuccess : \(type(of: isSuccess))");    // 변수 isSuccess 의 타입 명을 print 해준다. -> "isSuccess : Bool"
print("isSuccess : \(isSuccess) \n");


// type annotation
var str2: String = "Hello, playground"
print("str2 : \(type(of: str2))")
print("str2 : \(str2)")

var dob2: Double = 0.11;
print("dob2 : \(type(of: dob2))");
print("dob2 : \(dob2)");

let maximum2: Int = 1000
print("maximum2 : \(type(of: maximum2))");
print("maximum2 : \(maximum2)");

let isSuccess2: Bool = false
print("isSuccess2 : \(type(of: isSuccess2))");
print("isSuccess2 : \(isSuccess2)");





