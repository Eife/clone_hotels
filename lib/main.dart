import 'package:clone_hotels/componets/tab_two.dart';
import 'package:clone_hotels/screen/first_open_screen.dart';
import 'package:clone_hotels/screen/main_screen.dart';
import 'package:clone_hotels/screen/register_main_screen.dart';
import 'package:clone_hotels/screen/travelers_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

      options: const FirebaseOptions(
        // storageBucket: "/hotels/ERJJj7osNYV1LcIkVdw0",
        // databaseURL: "/hotels/ERJJj7osNYV1LcIkVdw0",
          apiKey: "AIzaSyDDb9A4LeahPx_9nsLCv0a1Pxy06yTOEZ0",
          appId: "1:39800361335:android:bc637678ecc76f48479172",
          messagingSenderId: "39800361335",
          projectId: "clonehotel-52752")
          
          );
  
          
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
        '/': (context) => FirstOpenScreen(),
        '/register_screen': (context) => RegisterMainScreen(),
        '/main_screen': (context) => MainScreen(),
        '/travelers_screen': (context) => TravelerScreen(),
        '/tab_two': (context) => TabTwo(),
      },
    );
  }
}
