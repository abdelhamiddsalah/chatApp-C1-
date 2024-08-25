import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:chatt/views/widgets/Button.dart';
import 'package:chatt/views/widgets/LastPart.dart';
import 'package:chatt/views/widgets/PartOne.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emaill = TextEditingController();
   TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B475F),
      body: Container(
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 60,),
              Partone(),
              SizedBox(height: 40,),
            //  Listviewssign(title: 'Sign In', onChanged: (String ) {  },),
            TextFormField(
          decoration: InputDecoration(
            hintText: 'Email',
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)
            )
          ),
        ),
        SizedBox(height: 12,),
         TextFormField(
          decoration: InputDecoration(
            
              hintText: 'Password',
               hintStyle: TextStyle(color: Colors.white),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)
            )
          ),
        ),
              SizedBox(height: 25,),
              
              Buttton(titleButton: 'Sign In', ontap: () async{ 
                try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emaill.text,
    password: pass.text
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
    
  

  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
               },),
              SizedBox(height: 14,),
              Lastpart(pharse: 'don’t have an account?', Link:'Register',),
            ],
          ),
        ),
      ),
    );
  }
}