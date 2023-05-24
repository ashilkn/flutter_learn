import 'dart:io';

import 'package:flutter/material.dart';
import 'package:archive/archive_io.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          value
              ? const SizedBox(key: ValueKey("sizedBox"))
              : const Placeholder(
                  key: ValueKey("placeholder"),
                ),
          GestureDetector(
            onTap: () {
              setState(() {
                value = !value;
              });
            },
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
          !value
              ? const SizedBox(
                  key: ValueKey("sizedBox"),
                )
              : const Placeholder(key: ValueKey("placeholder")),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
