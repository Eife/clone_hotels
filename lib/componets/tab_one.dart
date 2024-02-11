import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class TabOne extends StatefulWidget {
  const TabOne({super.key});

  @override
  State<TabOne> createState() => _TabOneState();
}

class _TabOneState extends State<TabOne> {

  @override
  void initState() {
    super.initState();
    // _textEditingController = TextEditingController(text: _dateTimeNow)
  }

  late DateTime _dateTimeNow = DateTime.now();
  late DateTime _dateTimeNextDay = _dateTimeNow.add(const Duration(hours: 24));
  String _addToLableDate = "";

  late DateTime startDate;
  late DateTime endDate;

  String _formateDateToLable(DateTime _dateTimeNowF) {
    String _month = DateFormat.MMM().format(_dateTimeNowF);
    String _day = _dateTimeNowF.day.toString();
    _addToLableDate = "$_month. $_day";
    return _addToLableDate;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
              height: 60,
              child: TextFormField(
                onTap: () {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: Icon(Icons.location_on),
                    labelText: "Going to"),
              ).paddingAll(5)),
          SizedBox(
            height: 60,
            child: TextFormField(
                // onTap: () async {
                //   DateTime? newData = await showDatePicker(context: context, firstDate: _dateTimeNow, lastDate: DateTime(2025));
                // if (newData == null) return;
                // setState(() {
                //   //data = newData
                // });
                // },

                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext builder) {
                      FocusScope.of(context).unfocus();
                      DateRangePickerController _sfDatePickerController =
                          DateRangePickerController();
                      return Card(
                        margin: const EdgeInsets.fromLTRB(25, 50, 25, 50),
                        child: SfDateRangePicker(
                          controller: _sfDatePickerController,
                          showActionButtons: true,
                          showNavigationArrow: true,
                          onCancel: () {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text(
                                'Selection Cancelled',
                              ),
                              duration: Duration(milliseconds: 500),
                            ));
                            Navigator.of(context).pop();
                          },
                          onSubmit: (dateRangePickerSelectionChangedArgs) {
                            if (_sfDatePickerController.selectedRange != null) {
                              startDate = _sfDatePickerController.selectedRange!
                                  .startDate!; //Нельзя так делать, подумать как убрать.
                              endDate = _sfDatePickerController
                                  .selectedRange!.startDate!;
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("New date picked")));

                              _dateTimeNow = _sfDatePickerController
                                  .selectedRange!.startDate!;
                              _dateTimeNextDay = _sfDatePickerController
                                  .selectedRange!.endDate!;

                              setState(() {});
                            } else {
                              return print("YEAH");
                            }
                            print("$endDate");
                            Navigator.of(context).pop();
                          },
                          enableMultiView: true,
                          navigationDirection:
                              DateRangePickerNavigationDirection.vertical,
                          selectionMode: DateRangePickerSelectionMode.range,
                          initialSelectedRange: PickerDateRange(DateTime.now(),
                              DateTime.now().add(Duration(days: 4))),
                        ),
                      );
                    },
                  );
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText:
                      "${_formateDateToLable(_dateTimeNow)} - ${_formateDateToLable(_dateTimeNextDay)}",
                  prefixIcon: Icon(Icons.calendar_month),
                )).paddingAll(5),
          ),
          SizedBox(
            height: 60,
            child: TextFormField(
              onTap: () {
                Navigator.pushNamed(context, "/travelers_screen");
              },
                decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              labelText: "2 travelers, 1 room",
              prefixIcon: Icon(Icons.person),
            )).paddingAll(5),
          ),
        ],
      ).paddingAll(10),
    );
  }
}
