import 'package:clone_hotels/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class TabTwo extends StatefulWidget {
  const TabTwo({super.key});

  @override
  State<TabTwo> createState() => _TabTwoState();
}

class _TabTwoState extends State<TabTwo> {
  bool _checkBox = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cars"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          appTextFormField(Icons.location_on, "Pick up"),
          Row(
            children: [
              Expanded(
                child: appTextFormField(Icons.edit_calendar, "Pick-up date"),
              ),
              Expanded(child: appTextFormField(Icons.watch_later, "Time")),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child:
                      appTextFormField(Icons.edit_calendar, "Drop-off date")),
              Expanded(child: appTextFormField(Icons.watch_later, "Time")),
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: _checkBox,
                  onChanged: (bool? newValue) {
                    setState(() {
                      _checkBox = _checkBox ? false : true;
                    });
                  }),
              Text("Drop-of and pick-up locations are same")
            ],
          )
        ],
      ),
    );
  }
}
