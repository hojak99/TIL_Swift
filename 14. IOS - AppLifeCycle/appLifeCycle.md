# AppLifeCycle
이번엔 App LifeCycle 에 대해서 알아보는 시간을 가져보도록 하겠다.ㄴ

## Understanding Event Handling, Responders, and the Responder Chain
이벤트가 앱을 통해 전달되는 방식과 이벤트 처리 방벙베 대해 알아보겠다.  

앱은 responder 객체를 사용해 event를 받거나 핸들링한다. `responder object` 는 UIResponder 클래스의 모든 인스턴스이며, 공통 하위클래스는 UIView, UIViewController, 그리고 UIApplication 이 포함된다. Responder receive 는 raw event 데이터를 받고, 이벤트를 처리하거나 다른 responder object 로 전달해야한다. app 이 이벤트를 받으면 UIKit 은 자동으로 해당 이벤트를 첫 번째 responder 라고하는 가장 적합한 responder object 로 보낸다. 처리되지 않은 이벤트는 responder 에서 앱의 responder 객체의 동적 구성 active responder chain로 전달된다. 앱 내에는 단일 responder chain 이 없다. UIKit 은 객체가 하나의 responder 에서 다음 responder로 전달되는 방식에 대한 기본 규칙을 정의하지만 responder 객체의 해당 속성을 무시하여 항상 이러한 규칙을 변경할 수 있다. interface 에 lable, text field, button 및 두 개의 백그라운드 view 가 포함된, 앱의 default responder chain 을 보여준다.
