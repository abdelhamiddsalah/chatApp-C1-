import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Buttongoogle extends StatefulWidget {
  const Buttongoogle({super.key});

  @override
  State<Buttongoogle> createState() => _ButtongoogleState();
}

class _ButtongoogleState extends State<Buttongoogle> {
  Future signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}
  @override
  Widget build(BuildContext context) {
    return  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(onPressed: (){
                    signInWithGoogle();
                  },
                  child: Image.asset('assets/images/google.png', width: 30.w,height: 30.h,),
                  ),
                ],
              );
  }
}