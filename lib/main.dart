import 'package:flutter/material.dart';
import 'package:rad_flutter/stateful_widgets.dart';

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
  List<Widget> listWidgets = [
    const StatefulColorContainer1(),
    const StatefulColorContainer2(),
  ];

  void swap() {
    setState(() {
      listWidgets.insert(0, listWidgets.removeAt(1));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test"),
      ),
      body: Center(
        child: Column(
          children: [
            ...listWidgets,
            ElevatedButton(
              onPressed: () {
                swap();
              },
              child: const Text("Swap"),
            ),
          ],
        ),
      ),
    );
  }
}
