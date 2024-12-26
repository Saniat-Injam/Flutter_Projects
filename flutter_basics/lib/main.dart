import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Flutter Basics"),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          body: Container(
            //color: Colors.green[200],
            margin: const EdgeInsets.all(40),
            padding: const EdgeInsets.all(40),
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text("Hello Flutter"),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
