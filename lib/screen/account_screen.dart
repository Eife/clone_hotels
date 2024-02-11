import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nb_utils/nb_utils.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;

        final OAuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        final UserCredential userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);

        return userCredential.user;
      }
    } catch (e) {
      print(e); 
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        ElevatedButton(onPressed: () async {
          User? user = await signInWithGoogle();
          if (user != null) {print("Yep");}
        }, child: Text("Войти через гуголь(Не работает пока еще)")),
      ]),
    ).paddingAll(40);
  }
}
