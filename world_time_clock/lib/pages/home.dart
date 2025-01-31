import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, "/location");
              },
              icon: const Icon(Icons.edit_location),
              label: const Text("Edit the location"),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  data["location"],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
