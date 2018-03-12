# Classes and Structures
이번엔 `Class` 와 `Structure`에 대해서 알아보는 시간을 가져보도록 하겠다.

## Introduction
Class 와 structure 는 범용적이며, 프로그램 코드의 building block 이 되는 유연한 구조이다.
상수, 변수 및 함수와 동일한 syntax를 사용하여 class 나 structure 에 기능을 추가하는 property, method 를 정의한다.   

Swift 에서는 class 나 structure 를 하나의 파일로 정의한다.


## Comparing Classes and Structures
스위프트의 class와 structure 에는 많은 공통점이 있다.  

- 값을 저장할 property 정의
- 기능을 제공할 method 정의
- 초기 상태를 설정하기 위한 생성자를 정의
등이 있다.

class 에는 structure 에 없는 추가 기능이 있다.  
- 상속을 통해 한 class 는 다른 class 의 특성을 상속 받을 수 있다.
- type casting 을 사용하면 런타임에 class 인스턴스의 타입을 확인하고 interpret 할 수 있다.
- `Deinitializer` 는 class 의 인스턴스에 할당된 모든 리소스를 해제할 수 있게 한다.
- Reference counting 은 클래스 인스턴스에 대해 둘 이상의 참조를 허용한다.


## Examples
아래의 코드는 `Class` 와 `Structure` 를 정의하는 코드이다.

```
class SomeClass {
    // class definition goes here
}

struct SomeStructure {
    // structure definition goes here
}
```

```
struct Resolution {
    var width = 0;
    var height = 0;
}

class VideoMode {
    var resolution = Resolution();
    var interlaced = false;
    var frameRate = 0.0;
    var name : String?
}

// structure 나 class 의 인스턴스를 생성할 때는 다음과 같이 작성한다.   
// 참고로 new 연산자나 그런건 사용하지 않는다.
let someResolution = Resolution();
let someVideoMode = VideoMode();
```


## Accessing Properties
property 에 접근할 때는 아래와 같은 코드를 작성한다.

```
print(someResolution.width);        // 0
print(someVideoMode.resolution.width);      // 0

someVideoMode.resolution.width = 1280;
print(someVideoMode.resolution.width);      // 1280
```


## Properties
property 는 값을 특정 class, structure 또는 enumuration 과 연결해 사용한다. 
`Stored Property`는 상수와 변수 값을 인스턴스의 일부로 저장하지만, `Computed property` 는 값을 저장하지 않고 계산한다.  

### Stored Properties
```
// 아래의 property 들은 stored property 이다.
struct FixedLengthRange {
    var firstValue : Int;      
    let length : Int;
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3);
```

### Computed Properties
`Computed property` 는 값을 저장하는게 아니다.
대신에 getter 와 setter 를 제공해서 다른 property 와 value 를 간접적으로 검색하고 설정한다.   
참고로 Swift 에서는 getter 와 setter 는 Java 처럼 직접 `get()`, `set()` 을 명시해주지 않아도 된다.  
다음의 코드를 보면서 이해하자.

```
struct Point {
    var x = 0.0;
    var y = 0.0;
}

struct Size {
    var width = 0.0;
    var height = 0.0;
}

struct Rect {
    var orgin = Point();
    var size = Size();
    var center = Point {
        get {
            let centerX = origin.x + (size.width / 2);
            let centerY = origin.y + (size.height / 2);
            return Point(x : centerX, y: ceterY);
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2);
            origin.y = newCenter.y - (size.height / 2);
        }
    }
}

var square = Rect (
    origin: Point(x: 0.0, y: 0.0),
    size: Size(width: 10.0, height: 10.0));

let initialSquareCenter = square.center;
square.center = Point(x: 15.0, y:15.0);

print("square.origin is now at (\(square.origin.x), \(square.origin.y))");
// square.origin is now at (10.0, 10.0)
```

getter, setter 를 좀 더 짧은 코드로 작성하려면 아래의 코드처럼 작성하면 된다.
```
struct Cuboid {
    var width = 0.0;
    var height = 0.0;
    var depth = 0.0;
    var volume : Double {
        return width * height * depth;
    }
}

let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0);
print(fourByFiveByTwo.volume);      // 40.0
```


## Property Observers
`Property observer` 는 속성 값의 변화를 관찰하고 이에 반응한다. 
Property observer 는 새로운 값이 property 의 현재 값과 같은 경우에도 property 값이 설정될 때마다 호출된다.

- willSet : willSet 은 값이 저장되기 전에 호출된다.
- didSet : didSet 은 값이 새로운 값으로 저장된 후 즉시 호출된다.

```
class StepCounter {
    var totalSteps : Int = 0 {
        willSet (newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)");
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps");
            }
        }
    }
}

let stepCounter = SteopCounter();
stepCounter.totalSteps = 200;
// About to set totalSteps to 200
// Added 200 steps

stepCounter.totalSteps = 360
// About to set totalSteps to 360
// Added 160 steps
```

## Methods
Method 는 함수다. class 안에 있으면 method, 밖에 있으면 function 이라고 부른다 한다.


## Inheritance
class 는 다른 class 의 method, property 및 기타 특성을 상속받을 수 있다. 
 

### Subclassing
`Subclassing` 은 기존 클래스에서 새 클래스를 기초로하는 행위이다. 하위 클래스는 기존 클래스의 특성을 상속하고 수정할 수 있다.
또한, 새 특성을 서브 클래스에 추가할 수도 있다.

```
class SomeSubclass : SomeSuperClass {
    // subclass definition goes here
}
```

아래와 같이 상속해서 사용할 수 있다.
```
class Bicycle {
    var hasBasket = false;
}

class Tandem : Bicycle {
    var currentNumberOfPassengers = 0;
}

let tandem = Tandem();
tandem.hasBasket = true;
tandem.currentNumberOfPassengers = 2;
```

### Overriding
`Overriding` 은 상위 클래스에서 만든 메소드를 하위 클래스에서 다시 재정의하는 것이다. 이 때 `override` 라는 키워드를 사용해야 한다. 