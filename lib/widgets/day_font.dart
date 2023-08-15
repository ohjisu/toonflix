import 'package:flutter/material.dart';

class DayFont extends StatelessWidget {
  final String day;
  const DayFont({
    Key? key,
    required this.day,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          day,
          style: const TextStyle(
            color: Colors.white30,
            fontSize: 40,
          ),
        ),
        const SizedBox(
          width: 25,
        ),
      ],
    );
  }
}
