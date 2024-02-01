import 'package:clone_hotels/componets/main_screen_stays.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sochi.com",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30),
        ).center(),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Hi, traveler!", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),).paddingLeft(20),
            StaysSearchWidget(),
          ],
        ),
      ),
    );
  }
}
