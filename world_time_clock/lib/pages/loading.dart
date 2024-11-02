import 'package:flutter/material.dart';
import 'package:world_time_clock/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = "loading";

  void setUpWorldTime() async {
    WorldTime instance =
        WorldTime(location: "Dhaka", flag: "Bangladesh.png", url: "Asia/Dhaka");
    await instance.getTime();
    setState(() {
      time = instance.time!;
    });
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        // ignore: unnecessary_string_interpolations
        child: Text("$time"),
      ),
    );
  }
}
