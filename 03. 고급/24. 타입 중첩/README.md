# 타입중첩(Nested Types)
- 열거형은 특정 클래스나 구조체의 기능을 명확히 사용하기에 용이하다. 그러나 굳이 클래스나 구조체 외부에서는 열거형을 사용할 필요가 없을 때도 있다. 즉, 클래스나 구조체 내부에서 자신의 역할을 충실히 할 수 있도록 역할을 구분짓는 열거형을 선언해주고 자신의 내부에서만 사용할 수 있기를 원할 수 있다. 또는 특정 데이터 타입들을 하나의 클래스나 구조체에 구현하여 외부와의 혼선을 피하고 싶을 수도 있다.
- 스위프트에는 타입 내부에 타입을 정의하고 구현할 수 있다. 이를 중첩 타입이라고 한다. 타입 내부에 새로운 타입을 정의하고 싶다면, 자신의 정의 내부에 새로운 타입을 정의하고 구현해주기만 하면 된다.

# 1. 중첩 데이터 타입
- 함수를 중첩해 사용했듯이 클래스 내부에 새 클래스, 클래스 내부에 새 구조체, 구조체 내부에 새 열거형 등의 타입을 중첩해서 타입 내부에 새 타입을 정의할 수 있다.
- 데이터 타입을 중첩 구현하는 것을 보기에는 열거형을 외부에 정의했던 것과 크게 다르지 않아 보이지만, 중첩 데이터 타입을 사용할 때는 자신을 둘러싼 타입(자신이 속해 있는 타입)의 이름을 자신보다 앞에 적어줘야한다. 
- 타입이 다른 타입 내부에 중첩하여 구현한것과 같이 목적에 따라 타입을 중첩하는 것은 타입의 목적성을 명확히 하는데 큰 도움이 된다.
