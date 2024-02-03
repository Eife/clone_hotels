import 'package:clone_hotels/componets/tab_two.dart';
import 'package:clone_hotels/screen/first_open_screen.dart';
import 'package:clone_hotels/screen/main_screen.dart';
import 'package:clone_hotels/screen/register_main_screen.dart';
import 'package:clone_hotels/screen/travelers_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(

      options: FirebaseOptions(
        // storageBucket: "/hotels/ERJJj7osNYV1LcIkVdw0",
        // databaseURL: "/hotels/ERJJj7osNYV1LcIkVdw0",
          apiKey: dotenv.env["FIREBASE_API_KEY"] ?? "",
          appId: dotenv.env["FIREBASE_APP_ID"] ?? "",
          messagingSenderId: dotenv.env["FIREBASE_MESSAGING_SENDER_ID"] ?? "",
          projectId: dotenv.env["FIREBASE_PROJECT_ID"] ?? "")
          
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
