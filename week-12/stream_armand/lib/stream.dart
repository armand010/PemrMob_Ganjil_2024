import 'package:flutter/material.dart';

class ColorsStream {
  final List<Color> colors = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.lightBlue,
    Colors.purple,
  ];

  Stream<Color> getColors() async* {
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      int index = t % colors.length;
      return colors[index];
    });
  }
}
