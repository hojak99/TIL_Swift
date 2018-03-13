//: Playground - noun: a place where people can play

import UIKit

var name = ["A", "B", "C", "D"];
var age = [3, 4, 5, 6];
var height = [50 , 30, 50, 60];

print(name[0], age[0], height[0]);

// 위의 코드를 struct 를 사용해서 좀 더 편리하게 관리할 수 있다.
// struct 는 class 와 달리 property 에 대한 초기화를 해주지 않아도 된다.
struct Student {
    var name: String;
    var age: Int;
    var height: Int;
}

// 자동으로 초기화를 해주는 메소드를 제공. (생성자라고 생각하면 될 것 같다)
var student1 = Student(name: "A", age: 5, height: 50);
var student2 = Student(name: "B", age: 4, height: 30);
var student3 = Student(name: "C", age: 3, height: 10);

// 아래의 코드가 좀 더 가독성있다.
// print(student1);         // Student(name: "A", age: 5, height: 50)
print(student1.name, student1.age, student1.height);    // "A 5 50"
