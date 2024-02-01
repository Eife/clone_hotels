import 'package:clone_hotels/componets/tab_two.dart';
import 'package:clone_hotels/screen/first_open_screen.dart';
import 'package:clone_hotels/screen/main_screen.dart';
import 'package:clone_hotels/screen/register_main_screen.dart';
import 'package:clone_hotels/screen/travelers_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,

      initialRoute: "/",
      routes: {
        '/':(context) => FirstOpenScreen(),
        '/register_screen': (context) => RegisterMainScreen(),
        '/main_screen':(context) => MainScreen(),
        '/travelers_screen':(context) => TravelerScreen(),
        '/tab_two':(context) => TabTwo(),
      },

      
      
    );
  }
}
