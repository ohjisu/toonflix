import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// Root Widget이라고 보면되요
// 위젯으로 만드려면, 3개의 Core Widget 중에 하나를 상속받아야해요
class App extends StatelessWidget {
  // StatelessWidget 를 상속받으려면 build 함수를 구현해야해요

  @override
  Widget build(BuildContext context) {
    // material App Application = google Material Style
    // cupertino Application = Apple (iOS Style)

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text("Flutter"),
        ),
        body: const Center(child: Text('Hello Flutter')),
      ),
    );
    // return CupertinoApp();
  }
}
