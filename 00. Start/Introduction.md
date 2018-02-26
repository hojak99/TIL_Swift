# Introduction
해당 문서들은 모두 애플의 Swift 문서를 보고 번역해 작성한다.
간단하게 한 번 알아보고 가겠다. 

> 참고로 `Swift` 에서는 세미콜론 (;) 은 선택사항이다. 붙여도 되고, 안 붙여도 된다. 

Swift 에서는 integer 값에 대한 `Int`와 floating-point 값에 대한 `Double, Float`, Boolean 값에 대한 `bool`, textual data에 대한 `String`을 포함하여 `C language`와 `Objective-C` 유형의 타입들을 제공한다.

또한, `Array` 와 `Set`, `Dictionary`의 기본 컬렉션 유형 3가지를 제공한다.

## Constants and Variables
이번에 설명할 부분은 상수와 변수이다. 
- 상수와 변수는 항상 선언하기 전에는 사용할 수 없다. 상수는 `let` 으로 선언하며, 변수는 `var`으로 선언하여 사용할 수 있다. 또한, 변수나 상수 뒤에 : 을 붙이고 타입 명을 적으면 해당 변수나 상수는 해당 타입의 값만 적용할 수 있게 된다.

> `let` 변수는 값 변경 불가능, `var` 변수는 값 변경 가능

### Examples
`var`키워드와 `let`키워드를 이용해 각각 상수와 변수를 선언해보겠다.
```
let maximumNumber = 10
var temp = 10

var x = 0.0, var y = 1.1, var z = 2.2

var temp: String      // 선언된 temp 변수는 String 타입이다.
```

위에서 말했지만 `var`로 선언된 변수는 값을 변경할 수 있지만, `let`로 선언된 상수는 값을 변경할 수 없다.

### Examples
```
let temp = 10
temp = 20          
// “This is a compile-time error: languageName cannot be changed.” 란 에러가 발생한다.

var number = 01022220000
number = "1111";
// 이제 number에는 "1111"이란 데이터가 존재한다.
```

이제 변수와 상수를 선언할 수 있으니, 출력을 시켜보아야 한다.
출력은 C언어와 같이 `print()` 함수를 사용하면 된다.

### Examples
```
var strData = "하하!"

print(strData)
// "하하!" 가 출력된다.

print("난 항상 배가 고프지~\(strData)");
// "난 항상 배가 고프지~하하!" 가 출력된다.
```

주석 같은 경우는 `//` 와 `/* */` 를 사용하면 된다.