# Strings and Characters
이번에 작성한 문서는 String 과 Character 에 대한 설명이다.

이번 문서는 간단한 예제와 설명이면 끝이 날 것 같다.

```
let str = "HI, My name is KJH"
```
와 같은 코드를 이용해 상수를 초기화 할 수 있다.


### Examples
> 어떤 사람이 코드를 작성하고 있다. 그 사람은 변수에 엄청난 양의 String 데이터를 넣으려고 한다. 물론, 해당 String 데이터에는 개행(\n)도 포함되어 있다.

위와 같은 상황일 때 보통 직접 `\n` (개행문자)를 넣어서 작업을 한다. 하지만 Swift 에서는 이러한 상황을 위해 `""" """` 이란 `Multiple String Literals` 를 지원한다.

```
let str = """ 
나는 현재 월세가 아깝다. 전세자금대출을 받을 것이다.
        하지만 전세자금대출은 1금융권에서는 80% 밖에 받지 못한다.
    월세는 죽어도 싫다. 
돈이 많으면 행복하다. 인생의 진리다.
"""
```
라는 코드를 작성했을 때, `""" """` 로 인해 그대로 해당 값이 출력이 되는 것을 알 수가 있을 것이다.


## Initializing an Empty String
변수나 상수에 비어있는 String 값을 넣는 방법에 대해서 이야기를 할 것이다.
보통 Java 에서는 `String str = "";` 이런 식으로 초기화를 한다. 마찬가지로 Swift 에서도 이러한 방식과 다른 방식을 지원한다.  
예제에서 살펴보도록 하자.

### Examples
```
var str = ""

var tempStr = String()
```
위와 같은 방식으로 Empty String 으로  초기화를 할 수 있다.  

그렇다면 변수나 상수에 String 값이 비어 있다는 것을 알기 위해서는 어떡해야할까? 바로 `isEmpty` 란 함수를 사용하면 된다.

### Examples 
```
var str = "HIHIHIHIH"  

if(str.isEmpty) {
    print("비어있다.")
}
```

## Concatenating Strings and Characters
String 값들을 서로 붙일 때 `+` 를 사용하면 새로운 String 값이 만들어진다. 또한, `+=` 도 사용할 수 있다. 예제에서 확인해보자.

### Examples
```
var hihi = "Hello"
var byebye = "Bye

hihi + bye      // "HelloBye"

var name = "kjh"
hihi += name    // "Hellokjh"
```

## Counting Characters
문자열의 character 개수를 더해준다. 사용법은 다음과 같다.

```
let str = "abcsad"
print("count : \(str.count)")
```
