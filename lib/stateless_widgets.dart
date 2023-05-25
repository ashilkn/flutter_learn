import 'package:flutter/material.dart';

class StatelessColorContainer1 extends StatelessWidget {
  final Color color;
  const StatelessColorContainer1(this.color, {super.key});

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
  final Color color;
  const StatelessColorContainer2(this.color, {super.key});

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
