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
      body: ListView(
        scrollDirection: Axis.vertical,
        addAutomaticKeepAlives: false,
        children: [
          Container(color: Colors.blue),
          Container(color: Colors.green),
          Container(color: Colors.yellow),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[300],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: "Business",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.school),
          //   label: "School",
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: "QR code",
          )
        ],
      ),
      drawer: const Drawer(
        child: Text("Hello"),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
