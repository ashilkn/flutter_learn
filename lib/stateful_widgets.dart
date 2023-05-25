import 'dart:math';

import 'package:flutter/material.dart';

class StatefulColorContainer1 extends StatefulWidget {
  const StatefulColorContainer1({super.key});

  @override
  State<StatefulColorContainer1> createState() =>
      _StatefulColorContainer1State();
}

class _StatefulColorContainer1State extends State<StatefulColorContainer1> {
  late final Color color;

  @override
  void initState() {
    color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}

class StatefulColorContainer2 extends StatefulWidget {
  const StatefulColorContainer2({super.key});

  @override
  State<StatefulColorContainer2> createState() =>
      _StatefulColorContainer2State();
}

class _StatefulColorContainer2State extends State<StatefulColorContainer2> {
  late final Color color;

  @override
  void initState() {
    color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    super.initState();
  }

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
