# Foundation
Foundation 프레임워크는 기본적인 데이터 타입과 collection, operating system 에 접근하여 앱의 base layer 를 정의한다.

# UIKit
iOS or tvOS 앱을 위한 graphic과 event-driven 사용자 인터페이스를 구성하고 관리한다.

# UIImageView
인터페이스에 싱글 이미지나 애니메이션 이미지의 시퀀스를 표시해주는 객체  
(UIImage 와 다름. UIImageView 는 jpg나 png 를 표시해주는 클래스, UIImage 는 jpg 나 png 를 읽어들이는 클래스)

### Animating a Sequence of Images
이미지뷰는 animated image sequence 를 저장할 수 있으며, 전체 또는 시퀀스의 특정 부분을 play 할 수 있다. 이미지 시퀀스를 저장할 수 있는데 UIImage 객체의 배열로 저장해야 하며, animationImages property에 할당해야 한다. 한 번 할당을 해주고 나서, 메소드나 프로퍼티를 이용해서 애니메이션 타이밍과 start, stop을 설정할 수 있다.


# UIImage
해당 객체에서는 앱의 image 데이터를 관리한다. 그리고 image 객체는 immutable 하다.