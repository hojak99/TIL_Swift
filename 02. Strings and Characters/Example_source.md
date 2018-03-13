# Strings and Characters

```
//: Playground - noun: a place where people can play
import UIKit

var str = "안녕 ㅎㅇㅎㅇ. \n나는 누구누구게? \n나는 \"hjak99야\" "

print(str)
print("================")

// """ 를 사용할 때 첫 문장은 새로운 라인부터 작성해야 한다.
var str2 = """
    A: ㅎㅇ 난 상스치콤 먹는데 넌 뭘 먹고 있니? 상스치콤 몰라?
B: 상스치콤? 그게 뭐야?
            C: 문찐?
"""
print(str2)
//////////////////
var temp_1 = ""
var temp_2 = String()

if(temp_1.isEmpty) {
    print("temp_1 is empty")
}

if(temp_2.isEmpty) {
    print("temp_2 is empty")
}
///////////////////
var result = "^^ : "
let temp_3 = "hi"
let temp_4 = "bye"

var test = temp_3 + temp_4
print(test)             // 문자열이 더해져서 출력된다.
result += test;
print(result)           // result 와 test가 더해져서 출력된다.
print(result.count)     // 띄어쓰기 포함해 10글자로 되어있다고 출력이 된다.
```