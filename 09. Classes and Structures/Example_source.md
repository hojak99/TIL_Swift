# Classes and Structur
## Class
```
//: Playground - noun: a place where people can play
import UIKit

// 클래스 안에 property 값에 초기화를 안해주면 오류남
class Vehicle {
    var currentSpeed = 0.0;     // stored property
    var description: String {
        return "Traveling at \(currentSpeed) miles per hour";
    }
    
    func makeNoise() {
        print("noiseless");
    }
}

let someVehicle = Vehicle();

someVehicle.currentSpeed = 1.0;
print(someVehicle.currentSpeed);        // "1.0"
someVehicle.makeNoise();                // "noiseless"
print(someVehicle.description);         // "Traveling at 1.0 miles per hour"

// Vehicle 은 부모클래스, Bicycle 은 자식클래스이다.
class Bicycle : Vehicle {
    var hasBasket = false;
}

let someBicycle = Bicycle();
someBicycle.hasBasket = true;
print(someBicycle.hasBasket);       // "true"
someBicycle.currentSpeed = 15.0;
print(someBicycle.description);     // "Traveling at 15.0 miles per hour"

// Bicycle 은 부모클래스, Tandem 은 자식 클래스이다.
class Tandem : Bicycle {
    var currentNumberOfPassengers = 0;
    
    override
    var description: String {
        return "Traveling at \(currentSpeed) miles per hour, number of passenger : \(currentNumberOfPassengers)";
    }
}

let someTandem = Tandem();
someTandem.hasBasket = true;
someTandem.currentNumberOfPassengers = 2;
someTandem.currentSpeed = 22.0;
print("someTandem : \(someTandem.description)");        // "someTandem : Traveling at 22.0 miles per hour, number of passenger : 2"

// Vehicle 은 부모클래스, Train 은 자식클래스이다.
class Train : Vehicle {
    override func makeNoise() {
        print("Choo Choo");
    }
}

let someTrain = Train();
someTrain.makeNoise();      // "Choo Choo"


class Car : Vehicle {
    var gear = 1;
    
    // override 키워드를 붙이는 이유는 상속받는 Vehicle 클래스에도 초기화 메소드인 init() 이 존재하기 때문이다.
    override init(){
        print("Car");
    }
    init(newGear: Int){
        gear = newGear;
    }
}

let someCar = Car();        // "Car"
let someCar2 = Car(newGear: 5);
print(someCar2.gear);       // "5"
```

## Structure
```
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
```