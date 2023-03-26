import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Player {
  String name;
  String? team; // team은 값을 안가질 수도 있음.
  // constructor를 통해서 값을 지정해주지 않아도 오류가 발생하지 않음
  Player({required this.name});
}

void main() {
  var nico = Player(name: "potato");
  runApp(App());
}

class App extends StatelessWidget {
  // 이 class를 widget으로 활용하기 위해서,
  // flutter SDK에 있는 3개의 core Widget 중, 하나를 extend(상속) 받아야 함

  // Widget을 상속 받았기 때문에, build라는 메소드를 필수적으로 구현해야 함
  // flutter가 자동으로 실행하는 메소드이며, widget를 UI에 표현해줌
  @override
  // 상속받은 부모 class인 StatelessWidget에 있는 build를
  // 새로 작성하여 덮어 씌우겠다는 뜻
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Text("Hello world!"),
      // 모든 앱은 scaffold를 가져야 함.
      // UI가 구성되는 틀을 제공해주기 때문
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true, // title 위치를 center로 지정 가능
          elevation: 1, // AppBar의 그림자 정도 설정
          title: Text("Hello flutter"),
        ),
        body: Center(
          child: Text("Hello UR ! ♥"),
        ),
      ),
    );

    // root widget은 아래 둘 중 하나의 옵션을 return 해야 함
    // material app을 return; 구글
    // cupertino app을 return; 애플
    // 어떤 옵션을 return하느냐에 따라서,
    // 구글 처럼보이게 혹은 애플 처럼 보이게 할 수 있음
  }
}
