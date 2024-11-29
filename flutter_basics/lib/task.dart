import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(5),
            color: Colors.grey[300],
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                // Icon 1
                Icon(Icons.battery_charging_full, size: 20),

                SizedBox(width: 5), // Spacing between items
                // Icon 2
                Icon(Icons.mic, size: 20),
                SizedBox(width: 5),
                // Icon 3
                Icon(Icons.phone_android, size: 20),

                SizedBox(width: 5),
                // Icon 4
                Icon(Icons.laptop, size: 20),

                SizedBox(width: 25),
                // Text "GEAR UP"
                Expanded(
                  child: Text(
                    "GEAR UP",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 15),
                // Text "BLUETOOTH NECKBAND EARPHONE"
                Expanded(
                  child: Text(
                    "BLUETOOTH\nNECKBAND\nEARPHONE",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      height: 1.4,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
