//: Playground - noun: a place where people can play

import UIKit

let number = 5;

if number > 10 {
    print("number > 10");
} else if number >= 5 && number < 10 {
    print("5 <= number < 10");
}


// default 는 항상 switch문에서 존재해야한다.
switch number {
case 0:
    print("0");
case 1:
    print("1");
case 2, 3 :
    print("2, 3");
case 3...10 :
    print("3 < number <= 10");
default:
    print("default");
}
