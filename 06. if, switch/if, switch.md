# if, switch 
이번엔 if, switch 문에 대해서 알아보겠다.  
Swift 에서는 switch 문을 잘 활용하면 짧은코드로 파워풀하게 사용할 수 있기 때문에 switch문을 많이 사용할 것 같다.

## if
if문은 간단하기 때문에 Swift 공식 문서에도 2페이지로 설명이 되어있다.
if문은 쉽게 말하면 `만약 ~ 하다면 해당 로직을 수행합니다` 라고 생각하면 된다.   

Swift 에선 Java, C 등과 같은 언어와 다르게 조건문에 소괄호가 존재하지 않는다. 유의하길 바란다.

```
let tempNumber = 10;
if tempNumber == 10 {
    print("방가방");       // 방가방
}

if tempNumber > 5 {
    print("귀엽귀");       // 귀엽귀
} else if tempNumber < 5 {
    print("tempNumber 는 5보다 작다");
}
``` 

if 문은 무척 간단하다.


## switch
switch 문은 쉽게 말해서 조건에 따른 각각의 케이스들을 실행시킬 수 있다.   
참고고 Swift 에서는 switch문에 break가 없는데, case 문에 있는 코드 마지막에 자동으로 break가 생긴다고 생각하면 된다.  
 
보통 switch 문은 다음과 같이 사용한다.
```
 switch <some value to consider> {
     case <value 1> :
        <respond to value 1>
     case <value 2>, <value 3> : 
        <respond to value 2 or 3>
     default : 
        <otherwise, do something else>
 }
```
위와 같이 사용된다. 이제 예제를 보면서 switch 문을 어떻게 사용하는지 알아보도록 하자.

```
let someCharacter : Character = "z";

switch someCharacter {
    case "a" :
        print("the first letter of the alphabet");
    
    case "z" :
        print("the last letter of the alphabet");

    default : 
        print("Some other character");
} 
// "the last letter of the alphabet"
```

아래의 코드에선 케이스문의 조건을 여러개로 정할 수 있는 것을 보여준다. `,` 를 사용하면 된다.
```
let anotherCharacter : Character = "a";

switch anotherCharacter {
    case "a", "A" : 
        print("The letter A");
    default :
        print("Not the letter A");
}
// "The letter A"
```

아래와 같은 코드도 작성할 수 있다. Java, C 등과 같은 언어를 사용한 사람들에겐 익숙치 않은 문법일 수도 있다.
```
let approximateCount = 49;
let countedThings = "moons orbiting Saturn";
let naturalCount : String;

switch approximateCount {
    case 0 :
        naturalCount = "no";
    
    case 1..<5 :
        naturalCount = "a few";

    case 5..<12 :
        naturalCount = "several";

    case 12..<100 :
        naturalCount = "dozens of";

    case 100..<1000 :
        naturalCount = "hundreds of";

    default : 
        naturalCount = "many";
}
print ("There are \(naturalCount) \(countedThings).");
// "There are dozens of moons orbiting Saturn"
```

아래와 같은 코드도 작성할 수 있다. 여기서 `_`는 아무 데이터가 들어와도 된다는 뜻이다.
```
// 튜플
let somePoint = (1, 1);

switch somePoint {
    
    case (0, 0) :
        print("\(somePoint) is at the origin");

    // 여기서 _ 바는 아무 데이터여도 상관없다는 뜻이다.
    case (_, 0) :
        print("\(somePoint) is on the x-axis");

    case (0, _) :
        print("\(somePoint) is on the y-axis");

    // 각각 -2 보다 크고 2보다 작은 숫자가 오면 된다는 뜻이다.
    case (-2...2, -2...2) : 
        print("\(somePoint) is inside the box");

    default:
        print("\(somePoint) is outside of the box")
}

// (1, 1) is inside the box
```

아래의 코드는 각각 조건문에 있는 `let`형 `x` 상수와 `y` 상수에 해당 튜플의 값이 들어간다.
```
let antherPoint = (2, 0);

switch antherPoint {
    case(let x, 0) :
        print("on the x-axis with an x value of \(x)");

    case(0, let y) :
        print("on the y-axis with an y value of \(y)");
    
    case let(x, y) :
        print("somewhere else at \(x), \(y)");
}
// on the x-aixs with an x value of 2
```

```
let yetAnotherPoint(1, -1);

switch yetAnotherPoint {
    case let(x, y) where x == y:
        print("\(x), \(y) is on the line x == y");

    case let(x, y) where x == -y :
        print("\(x), \(y) is on the line x == -y");

    case let(x, y):
        print("\(x), \(y) is just some arbitrary point");
}

// 1, -1 is on the line x == -y
```

다음 코드를 만약 if 문으로 해결하려 했으면 무척이나 긴 코드가 필요했을 것이다. 
```
let someCharacter : Character = "e";

switch someCharacter {
    case "a", "e", "i" :
        print("첫번째 케이스");

    case "b", "c", "d" :
        print("두번째 케이스");
    
    default : 
        print("디폴트");
}

// 첫번째 케이스
```