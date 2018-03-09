//: Playground - noun: a place where people can play

import UIKit

// 참고로 while, for 문은 자바처럼 조건문에 괄호가 없다.

var num = 0;
while num < 5 {
    num += 1;
    print(num);         // 1, 2, 3, 4, 5
}
// num++, num-- 같은 연산자는 사용하지 못한다.


let names = ["A", "B", "C", "D"];
for name in names {
    print(name);        // A, B, C, D
}

let tempDictionary = ["A" : 1, "B" : 2, "C" : 3];
for(key, value) in tempDictionary {
    print("\(key), \(value)");      // C, 3  B, 2, A, 1
}

for index in 1...5 {
    print(index);       // 1, 2, 3, 4, 5
}


for _ in 1...5 {
    print("HI");        // HI HI HI HI HI
}

let minutes = 60;
for tickMark in 0..<minutes {
    print(tickMark);       // 0, 1, 2 ..... 59
}

let minuteInterval = 5;
// by 부분에 1을 입력하면 1씩 증가되는데 지금은 minuteInterval로 설정했기 때문에 5씩 증가하는 것이다.
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print(tickMark);    // 0, 5, 10, 15, ..... 55
}

// to 대신 through 로 설정하면, 쉽게 말해서 <= 로 설정이된다. to는 <
for tickMark in stride(from: 0, through: minutes, by: minuteInterval) {
    print(tickMark);    // 0, 5, 10, 15, ..... 60
}

/*
 해당 문법은 존재하지 않는다. Swift2 까지는 있었다고 한다.
 for(int i =0; i<5; ++i) {
 ....
 }
 */
