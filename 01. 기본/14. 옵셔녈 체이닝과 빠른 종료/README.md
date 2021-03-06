# 1. 옵셔널 체이닝
- 옵셔널에 속해 있는 nil일지도 모르는 프로퍼티, 메섣, 서브스크립션 등을 가져오거나 호출할 때 사용할 수 있는 일련의 과정이다. 옵셔널에 값이 있다면 프로퍼티, 메서드, 서브스크립트 등을 호출할 수 있고, 옵셔널이 nil이라면 프로퍼티, 메서드, 서브스크립트 등은 nil을 반환한다.
- 옵셔널 체이닝은 프로퍼티나 메서드 또는 서브스크립트를 호출하고 싶은 옵셔널 변수나 상수 뒤에 물음표(?)를 붙여 표현한다. 옵셔널이 nil이 아니라면 정상적으로 호출될 것이고, nil이라면 결괏값으로 nil을 반환한다. 결과적으로 nil이 반환될 가능성이 있으므로 옵셔널 체이닝의 반환된 값은 항상 옵셔널이다.

<br/> 

---------
# 2. 빠른 종료
- 빠른 종료(Early Exit)의 핵심 키워드는 guard이다.
- guard 구문은 if 구문과 유사하게 Bool 타입의 값으로 동작하는 기능이다. guard 뒤에 따라붙는 코드의 실행 결과가 true일때 코드가 계속 실행된다. if 구문과 달리 guard 구문은 항상 else 구문이 뒤에 따라와야한다. 만약 guard뒤에 따라오는 Bool 값이 false라면 else의 블록 내부 코드를 실행하게 되는데, 이때 else 구문의 블록 내부에는 꼭 자신보다 상위의 코드 블록을 종료하는 코드가 들어가게 된다. 그래서 특정 조전에 부합하지 않다는 판단이 되면 재빠르게 코드 블록의 실행을 종료할 수 있다.
   - 코드 블록을 종료할 때는 return, break, continue, throw 등의 제어문 전환 명령을 사용한다.
   - 또는 fatalError()와 같은 비반환 함수나 메서드를 호출할 수 있다.
