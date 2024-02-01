import 'package:clone_hotels/componets/tab_one.dart';
import 'package:clone_hotels/componets/tab_two.dart';
import 'package:clone_hotels/widgets/constant.dart';
import 'package:clone_hotels/widgets/images.dart';
import 'package:clone_hotels/widgets/style.dart';
import 'package:clone_hotels/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class StaysSearchWidget extends StatefulWidget {
  const StaysSearchWidget({super.key});

  @override
  State<StaysSearchWidget> createState() => _StaysSearchWidgetState();
}

class _StaysSearchWidgetState extends State<StaysSearchWidget> {
  int _selectTab = 0;
  List<Widget> _selectedTabWidget = [TabOne()];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        // decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 0.8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(Colors.red),
                  ),
                  child: Text(
                    "Stays",
                    selectionColor: redColor,
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/tab_two");
                  },
                  child: Text("Cars")),
            ]),
            Divider(
              height: 1,
            ),
            _selectedTabWidget[_selectTab],
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        foregroundColor: MaterialStateProperty.all(Colors.white)),
                    onPressed: () {},
                    child: Text("Search"),
                  ).paddingOnly(right: 20, left: 20),
                ),
              ],
            ),
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
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color.fromARGB(255, 27, 13, 53)),
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Text(
                      "$loremIpsum",
                      style: TextStyle(color: Colors.white),).center().paddingOnly(left: 30, right: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(style: blueButtonElevatedStyle(), onPressed: () {}, child: Text("Sign In")),
                      TextButton(onPressed: () {}, child: Text("Learn about One Key", style: whiteTextStyle(14),))
                    ],
                  )
                ],
              ),
            ).paddingOnly(left: 20, right: 20,top: 12),
            12.height,
            Container(
              alignment: Alignment.bottomLeft,
              height: 250,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(beach), fit: BoxFit.cover)),
              child: ListTile(title: Text("Resolve to save on travel", style: whiteTextStyle(28),).paddingOnly(right: 20), 
              subtitle: Text("Book a sun-soaked vacation for less.", style: whiteTextStyle(14),),).paddingOnly(right: 20, bottom: 20),
            ),
            
          ],
        ),
      ),
    );
  }
}
