import 'package:clone_hotels/componets/rooms_list.dart';
import 'package:clone_hotels/componets/search_screen_component.dart';
import 'package:clone_hotels/widgets/constant.dart';
import 'package:clone_hotels/widgets/images.dart';
import 'package:clone_hotels/widgets/style.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Hi, traveler!",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ).paddingLeft(20),
          ),
          SearchScreenComponent(),
          ElevatedButton(
            // icon: Icon(Icons.thumb_up, color: Colors.red,),
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                    const Color.fromARGB(255, 177, 194, 203)),
                foregroundColor: MaterialStatePropertyAll(Colors.black)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.thumb_up,
                  color: Colors.red,
                  size: 18,
                ),
                Text(
                  "Take a look back at your 2023 travel!",
                  style: TextStyle(fontSize: 13),
                ),
                Icon(Icons.keyboard_arrow_right),
              ],
            ),
          ).center().paddingOnly(
                right: 18,
                left: 18,
                top: 8,
              ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 27, 13, 53)),
            height: 180,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$loremIpsum",
                  style: TextStyle(color: Colors.white),
                ).center().paddingOnly(left: 30, right: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        style: blueButtonElevatedStyle(),
                        onPressed: () {},
                        child: Text("Sign In")),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Learn about One Key",
                          style: whiteTextStyle(14),
                        ))
                  ],
                )
              ],
            ),
          ).paddingOnly(left: 20, right: 20, top: 12),
          12.height,
          Container(
            alignment: Alignment.bottomLeft,
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(beach), fit: BoxFit.cover)),
            child: ListTile(
              title: Text(
                "Resolve to save on travel",
                style: whiteTextStyle(28),
              ).paddingOnly(right: 20),
              subtitle: Text(
                "Book a sun-soaked vacation for less.",
                style: whiteTextStyle(14),
              ),
            ).paddingOnly(right: 20, bottom: 20),
          ),          12.height,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Last-minute weekend deals",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ).paddingLeft(18),
              8.height,
              Text(
                "Showing deals for: AddedOne - Added Two",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
              ).paddingOnly(left: 18, bottom: 14),
              RoomsList(),
            ],
          ),
        ],
      ),
    );
  }
}
