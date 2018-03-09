# function
이번에 알아볼 것은 함수다. 조금 문법이 생소할 수도 있기 때문에 주의깊게 봤으면 한다.

## Introduction
함수는 특정 작업을 수행하는 코드를 포함하는 독립적인 덩어리(chunk)이다. 함수에 무엇을 하는지 식별할 수 있는 이름을 지정하고, 이름을 지정한 함수는 필요할 때 함수를 호출하여 해당 작업을 수행하는데 사용된다.  

함수를 정의할 때, 함수에 입력으로 사용하는 하나 또는 여러 개의 type 값들(매개변수)을 마음대로 정의할 수 있다. 또한, 함수가 끝날 때 결과를 반환할 값의 type을 선택적으로 정의할 수 있다. 이것을 리턴타입이라고 한다.


## Examples
우선 쉽게 이해하기 위해서 예제가 필요하다.

아래의 코드는 파라미터와 리턴타입이 존재하는 함수다. 
```
// 함수명 : greet >> func greet
// 매개변수 : String 형인 변수 person  >> person : String
// 리턴타입 :  String  >> -> String
func greet(person : String) -> String {
    let greeting = "Hello, " + person + "!";
    return greeting;
}

// 아래의 코드와 같이 함수를 호출하려면 정의된 함수의 (매개변수 이름:넣을 값) 으로 해서 호출해야 한다.
print(greet(person: "KJH"));        // Hello, KJH!
print(greet(person: "AAA"));        // Hello, AAA!
```

아래의 코드는 리턴타입은 존재하지만 파라미터가 존재하지 않을 때의 함수이다.
```
func sayHelloWorld() -> String {
    return "Hello, World";
}

print(sayHelloWorld());     // Hello, World
```

아래의 코드는 파라미터는 존재하지만 리턴타입이 없을 때의 함수이다.  
하지만 리턴타입이 없다고 해서 리턴되는 값이 없는 것은 아니다. `Void` 를 리턴한다.
```
func greet(person : String) {
    print("Hello, \(person)");
}

greet(person : "KJH");      // Hello, KJH
```


## Function Argument Labels and Parameter Names
조금 헷갈리는 개념이 나온다. Argument Label과 Parameter Name 이란 개념이 나오는데, 알고보면 간단한하다.  
우선 argument Label은 함수를 호출 할 때 사용되며, parameter name 은 함수 안에서 사용된다.

위에서 예제로 작성한 함수들은 argument label 을 지정해줬지 않았기 때문에, parameter name 과 argument label 을 같이 사용한 것이다.  

아래의 코드를 보면 각각 어떤 역할을 하는지 알 수 있을 것이다.
```
func someFunction(argumentLabel parameterName: Int) {
    print(parameterName);
}

someFunction(argumentLabel: 1);     // 1
```

또한, 매개변수를 입력할 때 앞에 argument label 을 입력하기 싫으면 `_` 를 매개변수를 정의할 때 설정해주면 된다.  
아래 코드에서 확인해보자.
```
func someFunction(_ firstParam : Int, secondParam: Int) {
    ......
}

someFunction(1, secondParam : 2);
```


## Default Parameter Values
아래의 코드는 매개변수에 default 값을 설정하는 코드이다.

```
func someFunction(param : Int, temp : Int = 11) {
    .....
}

someFunction(param: 1, temp : 2);       // param = 1, temp = 2
someFunction(param: 1);      // param = 1, temp = 11;
```

## Variadic Paramters
여러 값을 넣을 수도 있다.

```
func arithmeticMean(_ numbers: Double...) -> Double {
    var total : Dobule = 0;
    for number in numbers {
        total += number;
    }

    return total / Dobule(numbers.count);
}

arithmeticMean(1, 2, 3, 4, 5);       // 3.0
arithmeticMean(3, 8.25, 18.75);      // 10.0
```