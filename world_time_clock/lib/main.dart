import 'package:flutter/material.dart';
import 'package:world_time_clock/pages/choose_location.dart';
import 'package:world_time_clock/pages/home.dart';
import 'package:world_time_clock/pages/loading.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: const Home(),
      initialRoute: "/",
      routes: {
        "/": (context) => const Loading(),
        "/home": (context) => const Home(),
        "/location": (context) => const ChooseLocation(),
        "/loading": (context) => const Loading(),
      },
    ),
  );
}
