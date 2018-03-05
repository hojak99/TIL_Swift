//: Playground - noun: a place where people can play

import UIKit

// var 로 선언한 array 변수는 mutable 하지만, let 으로 선언한 array 상수는 immutable 하다
var testArray = Array<String>();
var testArray2 = [String]();

print("\(testArray) , " + "\(testArray2)");       // "[] , []"

testArray2.append("1번");
testArray2.append("2번");
testArray2.append("3번");
print("testArray2 : \(testArray2), size : \(testArray2.count)" );    // " ["1번", "2번", "3번"], size : 3 "

var testArray3 = ["사나", "없이", "사나", "마나"];
testArray3 += ["트와이스"];
print("testArray3 : \(testArray3)");            // " ["사나", "없이", "사나", "마나", "트와이스"] "
print("testArray3[0] : \(testArray3[0])");      // "사나"

testArray3[4] = "사나졸귀";
print("testArray3[4] : \(testArray3[4])");      // "사나졸귀"

testArray3[0...3] = ["사나", "치즈김밥", "짱귀", "ㅇㅈ"];
print("testArray3 ; \(testArray3)");            // ["사나", "치즈김밥", "짱귀", "ㅇㅈ", "사나졸귀"]

