import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final listA = [
    Container(
      width: 100,
      height: 100,
      color: Colors.red,
      // key: UniqueKey(),
    ),
    Container(
      width: 200,
      height: 100,
      color: Colors.green,
      // key: UniqueKey(),
    ),
    Container(
      width: 300,
      height: 100,
      color: Colors.blue,
      // key: UniqueKey(),
    ),
  ];
  final listB = [
    Container(
      width: 100,
      height: 120,
      color: Colors.red,
      // key: UniqueKey(),
    ),
    Container(
      width: 200,
      height: 120,
      color: Colors.green,
      // key: UniqueKey(),
    ),
    const Placeholder(),
  ];
  List<Widget> listWidgets = [];
  bool value = false;

  @override
  Widget build(BuildContext context) {
    if (listWidgets.isEmpty) {
      listWidgets = listA;
    }
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ...listWidgets,
            ElevatedButton(
              onPressed: () {
                setState(() {
                  listWidgets = listWidgets == listA ? listB : listA;
                });
              },
              child: const Text("Swap"),
            ),
          ],
        ),
      ),
    );
  }
}
