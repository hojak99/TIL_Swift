# Collection Types
이번엔 Swift 의 컬렉션 타입들에 대해서 알아보도록 하겠다.
  

## Introduction
Swift 에서는 기본적으로 3가지 컬렉션 타입들을 제공한다.  
`Arrays`, `Set`, `Dictionary` 를 제공하는데 셋 다 값들의 집합을 저장할 수 있다.

- Arrays : 정렬된 값들의 컬렉션
- Set : 고유한 값들의 정렬되지 않은 컬렉션
- Dictionary : 키-값이 연계되는 정렬되지 않은 컬렉션

`Arrays`, `Set`, `Dictionary` 를 생성하고, 변수에 할당하면 생성된 컬렉션은 변경될 수 있다(mutable). 즉, 컬렉션 안에 아이템들을 추가, 삭제, 변경을 하여 컬렉션을 변경할 수 있다.
> 만약 `let` 에 컬렉션을 할당한다면 immutable 할 것이다. (사이즈 변경 x)  

## Arrays
배열은 동일한 타입의 값들을 정렬된 목록에 저장을 한다. 즉, 동일한 값이 여러 위치에 여러 번 나타날 수 있다는 것이다.  

배열을 만들 때에는 보통 `Array<Element>` 로 만드는데, 간단하게 `[Element]` 로 생성할 수 있다.

### Examples 
```
var data = [Int]()
print(data.count)       // 0
```
과 같이 만들 수가 있다.  

또 다른 방식으로는 어노테이션처럼 사용할 수도 있다는 것이다.
```
// 물론 타입 어노테이션을 명시하지 않아도 된다.
var strData : [String] = ["111", "개똥벌레"]

if(strData.isEmpty) { /* */}    // isEmpty 사용 가능
strData.count       // count 사용가능

//////////////////

staData.append("3333")
staData.append("44444")
strData += ["555"]
strData += ["77777", "111", "123131"]

strData[0]      // "111"
strData[0] = "change"       // strData(0)는 이제 "chage" 값이 들어간다
```