# Optionals
`Optional` 은 값이 있을 때와 값이 없을 때를 위해 사용된다. Swift 에서는 변수 또는 상수에 항상 값이 존재해야 한다. 그래서 class 의 property 에도 초기화를 해주지 않으면 에러가 발생한다. 그래서 Swift 에서는 코드를 좀 더 safe 하게 작성할 수 있다.

하지만, 값이 존재하지 않는 null 과 같은 값이 Swift 에도 존재하는데 이것이 바로 `nil` 이라는 값이다. (원래는 `nil`이란 값이 들어가면 안된다)

이번에는 이런 `nil` 값에 대해서 알아보도록 하겠다.

## Examples
코딩을 하다보면 문자를 숫자로 바꿔야할 때가 있다. 아래의 코드는 문자를 숫자로 convert 해주는 코드이다.
```
let possibleNumber = "123";
let convertedNumber = Int(possibleNumber);
```
이 때 상수 `convertedNumber`는 타입이 `Int` 가 아닌 `Int?` or `optional Int` 라는 타입(둘은 같은 의미)으로 컨버트된다. 

왜냐하면, 문자를 숫자로 컨버트할 때 
"123" 과 같은 문자이면 좋지만, "abc" 란 문자를 숫자로 컨버트할 때 문제가 생긴다. 바로 이 때 `nil` 이란 값을 반환한다.  

그렇기 때문에 `nil`이란 값이 들어갈 수 있는 `(type)?` 또는 `optional (type)` 타입이 존재한다는 것이다. (`optional (type)` 를 제외한 타입에는 `nil`값을 넣지 못 한다는 것을 주의하자. 또한, 해당 타입은 초기화를 시켜주지 않아도 된다.)

```
var serverResponseCode: Int? = 404;
serverResponseCode = nil;

var suveyAnswer: String?;
suveyAnswer = nil;

var temp: Int = 1;
temp = nil;     // ERROR!
```

## If Statements and Forced Unwrapping
`nil` 값이 들어가있는지 검색하기 위해 if문을 사용할 수 있다.

```
// convertedNumber == nil
if convertedNumber != nil {
    // 뒤에 !를 붙이면 optional type을 벗을 수 있다.
    print(convertedNumber!);
}
```

## Optioanl Binding
다음과 같이 코드를 작성할 수도 있다.

```
if let constantName = <someOptional> {
    // constantName 이 nil 이 아닐 때
} else {
    // nil 일 때
}
```

```
// 형변환이 잘 된다면 actualNumber 에는 nil 값이 들어가지 않을 것이다.
if let actualNumber = Int(possibleNumber) {
    print("\(possibleNumber) has an integer value of \(actualNumber)");
} else {
    print("\(possibleNumber) could not be converted to an integer");
}
```