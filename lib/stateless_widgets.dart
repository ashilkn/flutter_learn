import 'dart:math';

import 'package:flutter/material.dart';

class StatelessColorContainer1 extends StatelessWidget {
  const StatelessColorContainer1({super.key});

  Color getRandomColor() {
    return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // key: const ValueKey("green"),
      width: 100,
      height: 100,
      color: getRandomColor(),
    );
  }
}

class StatelessColorContainer2 extends StatelessWidget {
  const StatelessColorContainer2({super.key});

  Color getRandomColor() {
    return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // key: const ValueKey("green"),
      width: 100,
      height: 100,
      color: getRandomColor(),
    );
  }
}
