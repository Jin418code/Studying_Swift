# 데이터 타입(기본)

## 데이터 타입의 종류
- 프로그램에서 다루는 데이터의 종류를 뜻하며
- 스위프트의 모든 데이터 타입 이름은 첫 글자가 대문자인 **대문자 카멜케이스**를 사용함

<br/>

------------

## 1. Int와 UInt
- 정수 타입
- max와 min 프로퍼티로 최댓값과 최솟값 확인이 가능하다.
- 데이터 크기 타입에 따라 분리된다
  - 32bit에서는 Int32, UInt32 타입으로 지정된다.

### Int
- (+,-)부호를 포함하는 정수를 뜻한다.
```swift
var someInt: Int = -100

var someInt: Int = 100.1 // Double 타입이라 안됨.
```

### UInt
- (-)부호를 포함하지 않는 0을 포함한 양의 정수를 뜻한다.
```swift
var someUInt: UInt = 100

someUInt = someInt // UInt에 Int 값 못 넣음.
```

<br/>

### 진수에 따라 정수 표현이 바뀜
- 10진수 : 평소 쓰는 방법이랑 같음 
  - let decimalInteger: Int = 28 <br/>
- 2진수 : 접두어 0b를 사용함 
  - let binaryInteger: Int = 0b11100 <br/>
- 8진수 : 접두어 0o를 사용함
  - let octalInterget: Int = 0o34 <br/>
- 16진수 : 접두어 0x를 사용함
  - let hexadecimalInteger: Int = 0x1c 

<br/>

-------------
## 2. Bool
- 참(true) 또는 거짓(false)만 값으로 가진다.
```swift
var someBool: Bool = true
```

<br/>

-------------

## 3. Float와 Double
- 부동소수점을 사용하는 실수, 흔히 소수점 자리가 있는 수를 말한다.
- 정수타입보다 넓은 범위의 수를 표현할 수 있다.

 ✏️ 스위프트 4.2버전부터 임의의 수를 만드는 `random(in:)` 메서드가 추가됨
  정수와 실수 모두 임의의 수로 만들 수 있음
  
### Float
- 32비트 부동소수를 표현한다.
```swift
var someFloat: Float = 3.14

var someFloat: Float = 3    // 3이란 정수는 받아들임
```
### Double
- 64비트 부동소수를 말한다
```swift
var someDouble: Double = 3.14

var someDouble: Double = 3    // 3이란 정수는 받아들임
```

```swift
someDouble = someFloat  // Double 타입에 Floast 타입 못 
```
<br/>
✏️ 64비트 환경에서 Double은 최소 15자리의 십진수를 표현할 수 있지만
Float는 6자리의 숫자까지만 표현 가능.

<br/>

---------------

## 4. Characrer
- 단 하나의 문자를 의미한다.
- 유니코드가 지원하는 모든 언어 및 특수기호 등을 사용 가능하다.
- 문자를 표현하기 위해서는 큰따옴표(")를 사용해 표현한다.
```swift
var someCharacter: Character = "🇰🇷"

var someCharacter = "😄"
var someCharacter = "가"
var someCharacter = "A"

var someCharacter = "하하하"   // Character 타입 아님
```
<br/>

-------------

## 5. String
- 문자열을 의미한다
- Character와 같이 유니코드 9을 사용할 수 있으며, 값의 앞뒤에 큰따옴표(")로 표현한다.
- 스위프트의 String 타입은 기본적으로 많은 메서드와 프로퍼티들이 구현되어 있으며, 문자열과 관한 연산자도 많이 정의되어 있다.
```swift
var someString: String = "하하하 😄"
someString = someString + "웃으면 복이와요"  // 연산자를 이용해서 문자열을 합칠수 있다.
```
```swift
someString = someCharacter // String 타입에 Character 타입 수용 안됨
```
### 특수문자
- 모드 백슬래시(\) + 특정문자로 이루어져있다.
  - \n : 줄바꿈문자
  - \\ : 문자열 내에서 백슬래시 표현
  - \" : 문자열 내에서 큰따옴표 표현
  - \t : 키보드의 탭과 같음
  - \O : 문자열이 끝났음을 알리는 null 문자
 
<br/>

-------------

## 6. Any, AnyObject와 nil, never

### Any
- 스위프트의 모든 타입을 지칭하는 키워드이다.
- 변수 또는 상수의 데이터 타입이 Any로 지정되면 모든 데이터 타입에 상관없이 할당할 수 있다.
```swift
var someVar: Any = "Jin"	// Any로 선언된 변수는 문자열도
someVar = 50				// 정수도
someVar = 100.1				// 실수 또는 어떤 타입의 값도 할당 가능함
```
```swift
someAny = nil 				// 어떤 데이터 타입이든 들어올수 있는 Any지만 빈 값을 들어올수 없음, AnyObject도 같음
```

### AnyObject
- AnyObject는 Any보단 한정됨 의미로, 모든 클래스 타입을 지칭하는 프로트콜이다.

### nil
- 변수 또는 상수에 값이 들어있지 않는 즉 특정 타입이 아니라 **'없음'**을 나타내는 키워드다.
- nil이면 잘못된 메모리 접근으로 런타임 오류가 발생한다.
  - 흔히 널 포인트 익셉션(Null Point Exception)이라 한다.

## never
- 특정 함수의 반환 타입으로 사용될 수 있는 타입이다
