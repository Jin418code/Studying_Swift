# 1. 맵(Map)
- 맵은 자신을 호출할 때 매개변수로 전달된 함수로 실행하여 그 결과를 다시 반환해주는 함수이며 배열, 딕셔너리, 세트, 옵셔널 등에서 사용할 수 있다.
   - Sequence, Collection 프로토콜을 따르는 타입과 옵셔널은 모두 맵을 사용할 수 있다.
- 맵을 사용하면 컨테이너가 담고 있던 각각의 값을 매개변수를 통해 받은 함수에 적용한 후 다시 컨테이너에 포장하여 반환한다. 기존 컨테이너의 값은 변경되지 않고 새로운 컨테이너가 생성되어 반환된다. 그래서 맵은 기존 데이트를 변형(transform)하는데 많이 사용한다.
- 맵 메서드의 사용법은 for-in 구문과 별반 차이가 없다. 다만 코드의 재사용 측면이나 컴파일러 최적화 측면에서 본다면 성능 차이가 있다. 

<br/>

---------

# 2. 필터(Filter)
- 컨테이너 내부의 값을 걸러서 추출하는 역할ㅇ르 하는 고차함수이다.
- 맵과 마찬가지로 새로운 컨테이너에 값을 담아 반환해준다. 다만 맵처럼 기존 콘텐츠를 변형하는 것이 아니라, 특정 조건에 맞게 걸러내는 역할을 할 수 있다는 점이 다르다.
- filter 함수의 매개변수로 전달되는 함수의 반환 타입은 Bool타입이다.
   - 해당 콘텐츠의 값을 갖고 새로운 컨테이너에 포함될 항목이라고 판단하면 true, 포함하지 않으려면 false를 반환해주면 된다.

<br/>

---------

# 3. 리듀스(Reduce)
- 리듀스 기능은 사실 결합(Combine)이라고 불려야 마땅한 기능이다. 리듀스는 컨테이너 내부의 콘텐츠를 하나로 합하는 기능을 실행하는 고차함수이다.
- 배열이라면 배열의 모든 값을 전달인자로 전달받은 클로저의 연산 결과로 합해준다.
1. 첫 번째 리듀스는 클로저가 각 요소를 전달받아 연산한 후 값을 다음 클로저 실행을 위해 반환하며 컨테이너를 순환하는 형태
2. 리듀스 메서드는 컨테이너를 순환하며 클로저가 실행되지만 클로저가 따로 결괏값을 반환하지 않는 형태이다. 대신 inout 매개변수를 사용하여 초깃값에 직접 연산을 실행한다.
