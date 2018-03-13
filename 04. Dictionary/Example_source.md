# Dictionary

```
//: Playground - noun: a place where people can play
import UIKit

// let 으로 선언한 상수는 변경 불가능
var testDictionary = Dictionary<String, String>();
var testDictionary1 = [Int : String]();

// print(testDictionary);      "[:]"  --> 비어있단 뜻
// print(testDictionary1);      "[:]"  --> 비어있단 뜻
if testDictionary1.isEmpty {
    print("testDictionary1 is empty");
}

testDictionary1[5] = "재니재니";
testDictionary1[10] = "ㅎㅇㅎㅇ";
print("\(testDictionary1), count = \(testDictionary1.count)");      // [5: "재니재니", 10: "ㅎㅇㅎㅇ"], count = 2

testDictionary1[5] = "뿜뿜";
print(testDictionary1);         // [5: "뿜뿜", 10: "ㅎㅇㅎㅇ"]
print(testDictionary1[5]!);     // "뿜뿜" (!를 없애면 Optional("뿜뿜") 으로 출력된다.)
```