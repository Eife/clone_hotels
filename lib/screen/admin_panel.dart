import 'package:clone_hotels/widgets/constant.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class AdminPanel extends StatefulWidget {
  const AdminPanel({super.key});

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  TextEditingController _nameHotel = TextEditingController();
  TextEditingController _city = TextEditingController();
  TextEditingController _discount = TextEditingController(text: "0");
  TextEditingController _price = TextEditingController();
  TextEditingController _rating = TextEditingController(text: "10");

  void goNext() {
    setState(() {
      Fluttertoast.showToast(msg: "Load");
      _nameHotel = TextEditingController();
      _city = TextEditingController();
      _discount = TextEditingController(text: "0");
      _price = TextEditingController();
      _rating = TextEditingController(text: "10");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Panel"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hotels name",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _nameHotel,
                validator: (value) => validator(value)),
            Text(
              "City",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _city,
                validator: (value) => validator(value)),
            Text(
              "Discount now (Default 0)",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextFormField(
                keyboardType: TextInputType.number,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _discount,
                validator: (value) => validator(value)),
            Text(
              "Price",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextFormField(
                keyboardType: TextInputType.number,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _price,
                validator: (value) => validator(value)),
            Text(
              "Rating hotel (Default 10)",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextFormField(
                keyboardType: TextInputType.number,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _rating,
                validator: (value) => validator(value)),
            ElevatedButton(
                onPressed: () async {
                  await FirebaseFirestore.instance.collection("hotels").add({
                    "city": "${_city.text}",
                    "discount": "${_discount.text}",
                    "nameHotel": "${_nameHotel.text}",
                    "price": "${_price.text}",
                    "rating": "${_rating.text}"
                  });
                  goNext();
                },
                child: Text("test"))
          ],
        ).paddingAll(16),
      ),
    );
  }
}

String? validator(value) {
  if (value == null || value.isEmpty) {
    return "Please enter value";
  } else {
    return null;
  }
}
