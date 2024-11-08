import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStack(),
    );
  }
}

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Positioned widget"),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
          ),
          const Positioned(
            top: 40,
            left: 20,
            child: Icon(Icons.verified),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
