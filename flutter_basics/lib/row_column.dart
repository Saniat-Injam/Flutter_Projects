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
              title: const Text("My App"),
              backgroundColor: Colors.blue,
              centerTitle: true,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  children: [
                    Icon(Icons.home),
                    Icon(Icons.person),
                    Icon(Icons.favorite),
                    Icon(Icons.more),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.home),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.person),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more),
                    ),
                  ],
                ),
                // const Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //     Text("Hello all"),
                //     Text("Hello all"),
                //     Text("Hello all"),
                //   ],
                // )
              ],
            )),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
