import 'package:flutter/material.dart';
import 'package:toonflix/widgets/color_card.dart';
import 'package:toonflix/widgets/day_font.dart';

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
        backgroundColor: const Color.fromRGBO(31, 31, 31, 1),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("이미지"), // Todo, 이미지
                    Container(
                      width: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        "+",
                        style: TextStyle(
                          color: Color.fromRGBO(254, 254, 254, 1),
                          fontSize: 45,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ), // Todo, 아이콘
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 20, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "MONDAY",
                          style: TextStyle(
                            color: Colors.white38,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "16",
                          style: TextStyle(
                            color: Colors.white38,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const Text(
                        "TODAY",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                      const Text(
                        "•",
                        style: TextStyle(
                          color: Color(0xffff00a4),
                          fontSize: 40,
                        ),
                      ),
                      for (var i in [
                        "17",
                        "18",
                        "19",
                        "20",
                        "21",
                        "22",
                        "23",
                        "24",
                        "25",
                        "26",
                        "27",
                        "28",
                        "29",
                        "30",
                        "31",
                      ])
                        DayFont(day: i),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const ColorCard(
                bgColor: Color(0xfffef754),
                startTime: ["11", "30"],
                endTime: ["12", "20"],
                title: ["DESIGN", "MEETING"],
                people: ["ALEX", "HELENA", "NANA"],
              ),
              const SizedBox(
                height: 10,
              ),
              const ColorCard(
                bgColor: Color(0xff9c6bce),
                startTime: ["12", "35"],
                endTime: ["14", "10"],
                title: ["DAILY", "PROJECT"],
                people: [
                  "ME",
                  "RICHARD",
                  "CIRY",
                  "JAY",
                  "NUNU",
                  "POPO",
                  "ROSY"
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const ColorCard(
                bgColor: Color(0xffbcee4b),
                startTime: ["15", "00"],
                endTime: ["16", "30"],
                title: ["WEEKLY", "PLANNING"],
                people: ["DEN", "NANA", "MARK"],
              ),
            ],
          ),
        ),
      ),
    );
    // return CupertinoApp();
  }
}
