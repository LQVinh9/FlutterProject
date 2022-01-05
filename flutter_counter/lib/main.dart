import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text("Counter App")),
            body: Center(
                child: Text(counter.toString(),
                    style:
                        TextStyle(color: Colors.blue.shade300, fontSize: 40))),
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: const Icon(Icons.favorite,
                    color: Colors.pink, size: 24.0))));
  }
}
