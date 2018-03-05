# Control Flow
Control Flow 는 말 그대로 순서의 흐름을 말한다. 먼저, for-in 과 while 문에 대해서 알아보는 시간을 가지겠다.


## For-In
쉽게 생각해서 다른 언어들의 for 문을 생각하면 된다.   
필자도 Java 나 C++, JS 에서의 for 문을 생각했는데 Swift 에서는 조금 사용법이 달라서 헷갈리거나 좀 어려울 수도 있다.  
주의 깊게 살펴보자,,

### Example
다음의 예제코드에서는 배열 안에 있는 데이터들을 각각 출력시키는 코드이다. 
```
let test = ["One", "Two", "Three"];

for temp in test {
    print(temp);
} 

// "One"
// "Two"
// "Three"
```
  
다음 예제는 Dictionary 에 대한 Key, Value 값을 출력시크는 예제이다.
```
let test = [1: "Man", 2: "Girl", 3: "Woman"];

for (key, value) in test {
    print("\(key) : \(value)");
}

// 1, Man
// 2, Girl
// 3, Woman
```
  
```
for index in 1...5 {
    print(index);
}

// 1
// 2
// 3
// 4
// 5
```

```
let base = 3;
let power = 10;
var answer = 1;

for _ in ...power {
    answer *= base;
}
print(answer);

// 59049
```

```
let length = 60;

for(temp in 0..<length) {
    print (temp);
}

// 1
// 2
..
// 58
// 59
```