import 'package:flutter/material.dart';

class ColorCard extends StatelessWidget {
  final Color bgColor;
  final List<String> startTime;
  final List<String> endTime;
  final List<String> title;
  final List<String> people;

  const ColorCard({
    Key? key,
    required this.bgColor,
    required this.startTime,
    required this.endTime,
    required this.title,
    required this.people,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      startTime[0],
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      startTime[1],
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const Text("|"),
                    Text(
                      endTime[0],
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      endTime[1],
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      title[0],
                      style: const TextStyle(
                        fontSize: 60,
                        height: 1,
                      ),
                    ),
                    Text(
                      title[1],
                      style: const TextStyle(
                        fontSize: 60,
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        for (var name in people)
                          if (people.indexOf(name) < 3)
                            Row(
                              children: [
                                Text(
                                  name,
                                  style: TextStyle(
                                    color: name == "ME"
                                        ? Colors.black
                                        : Colors.black38,
                                  ),
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                              ],
                            ),
                        if (people.length > 3)
                          Text(
                            "+${people.length - 3}",
                            style: const TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
