import 'package:clone_hotels/componets/tab_one.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class SearchScreenComponent extends StatefulWidget {
  const SearchScreenComponent({super.key});

  @override
  State<SearchScreenComponent> createState() => _SearchScreenComponentState();
}

class _SearchScreenComponentState extends State<SearchScreenComponent> {
  int _selectTab = 0;
  List<Widget> _selectedTabWidget = [TabOne()];
  @override
  Widget build(BuildContext context) {
    return Container(

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
        ],
      ),
    );
  }
}
