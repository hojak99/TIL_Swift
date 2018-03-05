# Dictionary 
Dictionary 에 대해서 간단하게 알아보자.

## Introduction
Dictionary 는 같은 타입의 키와 같은 타입의 밸류 값을 연관시켜 저장하며 저장될 때 정렬되지 않는다.  

Dictionary 는 아래와 같이 사용한다.
```
Dictionary<Key, Value>()
or
[Key : Value]()
```

## Example
```
// 각각의 변수들은 비어있는 [Int : String] 형 Dictionary 이다.
var testDictionary = Dictionary<Int, String>();
var testDictionary2 = [Int : String]();

// "1" 이란 키에 "ㅎㅇㅎ" 이란 값을 저장함
testDictionary[1] = "ㅎㅇㅎ";      

// 리터럴 방식으로 Dictionary 생성
var testDictionary3 : [String : String] = ["AA" : "재니", "BB" : "안녕"]

print(testDictionary["AA"]);    // "재니"
```