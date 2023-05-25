import 'dart:math';

import 'package:flutter/material.dart';

class StatelessColorContainer1 extends StatelessWidget {
  StatelessColorContainer1({super.key});

  final color =
      Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      // key: const ValueKey("green"),
      width: 100,
      height: 100,
      color: color,
    );
  }
}

class StatelessColorContainer2 extends StatelessWidget {
  StatelessColorContainer2({super.key});

  final color =
      Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      // key: const ValueKey("green"),
      width: 100,
      height: 100,
      color: color,
    );
  }
}
