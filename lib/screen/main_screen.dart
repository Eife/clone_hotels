import 'package:clone_hotels/componets/search_screen_component.dart';
import 'package:clone_hotels/screen/admin_panel.dart';
import 'package:clone_hotels/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectIndex = 0;
  void _onIndexTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => AdminPanel()));}, child: Text("Admin"),),
      appBar: AppBar(
        title: Text(
          "Sochi.com",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30),
        ).center(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        unselectedIconTheme: IconThemeData(color: Colors.black, size: 14),
        selectedItemColor: Colors.red,
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.black),
        iconSize: 18,
        selectedFontSize: 14,

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.reviews), label: "Revards"),
          BottomNavigationBarItem(icon: Icon(Icons.loop), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.cases), label: "Trips"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: "Account"),
        ],
        currentIndex: _selectIndex,
        onTap: _onIndexTapped,
      ),
      body: Container(

        child: listBottomBarScreen[_selectIndex],
      ),
    );
  }
}
