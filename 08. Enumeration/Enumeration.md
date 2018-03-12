# Enumeration
`Enumeration` 은 관련된 값의 그룹에 대한 공통된 타입들을 정의하며 해당 값을 `type-safe` 하게 작업할 수 있다.

## Examples
```
enum SomeEnumeration {
    // enumeration definition goes here
}
```

```
enum CompassPoint {
    case north
    case south
    case east
    case west
}
```

```
enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}
```

```
var directionToHead = CompassPoint.west
ricrectionToHead = .east        // short code
```