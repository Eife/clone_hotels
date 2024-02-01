import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class TravelerScreen extends StatefulWidget {
  const TravelerScreen({super.key});

  @override
  State<TravelerScreen> createState() => _TravelerScreenState();
}

class _TravelerScreenState extends State<TravelerScreen> {
  @override
  Widget build(BuildContext context) {
    int _adults = 0;
    int _children = 0;

    void incrementCounterAdults() {
      setState(() {
        _adults = _adults + 1;
      });
    }

    void decrementCounterAdults() {
      setState(() {
        _adults = _adults - 1;
      });
    }

    void incrementCounterChildren() {
      setState(() {
        _children += 1;
      });
    }

    void decrementCounterChildren() {
      setState(() {
        _children -= 1;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Travelers"),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Room 1",
              style: TextStyle(fontWeight: FontWeight.w500),
            ).paddingLeft(8),
            Row(
              children: [
                Text("Adults"),
                200.width,
                Container(
                  height: 30,
                  width: 30,
                  child: FloatingActionButton(
                    heroTag: "decrementbtn",
                    onPressed: () {
                      decrementCounterAdults();
                    },
                    child: Icon(Icons.remove),
                  ),
                ),
                12.width,
                Text(_adults.toString()),
                12.width,
                Container(
                  height: 30,
                  width: 30,
                  child: FloatingActionButton(
                    heroTag: "incrementbtn",
                    onPressed: () {
                      incrementCounterAdults();
                    },
                    child: Icon(Icons.add),
                  ),
                )
              ],
            ).paddingAll(8), //Конец первого Row
            Row(
              children: [
                Text("Children"),
                188.width,
                Container(
                  height: 30,
                  width: 30,
                  child: FloatingActionButton(
                    heroTag: "decrementbtnchld",
                    onPressed: () {
                      decrementCounterChildren();
                    },
                    child: Icon(Icons.remove),
                  ),
                ),
                12.width,
                Text(_children.toString()),
                12.width,
                Container(
                  height: 30,
                  width: 30,
                  child: FloatingActionButton(
                    heroTag: "incrementbtnchld",
                    onPressed: () {
                      incrementCounterChildren();
                    },
                    child: Icon(Icons.add),
                  ),
                )
              ],
            ).paddingAll(8),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Add another room",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )),
            Row(children: [
              Expanded(
                  child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue), foregroundColor: MaterialStatePropertyAll(Colors.white)),
                onPressed: () {},
                child: Text("Done"),
              ).paddingAll(12))
            ]),
          ]),
    );
  }
}
