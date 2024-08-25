import 'package:chatt/views/widgets/ButtonGoogle.dart';
import 'package:chatt/views/widgets/Buttton2.dart';
import 'package:chatt/views/widgets/LastPart2.dart';
import 'package:chatt/views/widgets/PartOne.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Register extends StatefulWidget {


   Register({super.key, this.validator});
 final String? Function(String?)? validator;
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
   TextEditingController emaill = TextEditingController();

   TextEditingController pass = TextEditingController();
   
 GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  Widget build( BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B475F),
      body: Container(
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Form(
          key: formstate,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 60,),
                Partone(),
                SizedBox(height: 40,),
               // Listviews(title: 'Register'),
                 TextFormField(  
                  validator: (value) {
                    if (value == '') {
                      print('Empty');
                    }
                  },
             controller: emaill,
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
            
            controller: pass,
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
              const  SizedBox(height: 25,),
                Buttton2(titleButton: 'Register',ontap: () async{        
           if(formstate.currentState!.validate()){
            Navigator.pushNamed(context, 'chat');
            try {
              final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: emaill.text,
                password: pass.text,
              );
              
            } on FirebaseAuthException catch (e) {
              if (e.code == 'weak-password') {
                print('The password provided is too weak.');
                
              } else if (e.code == 'email-already-in-use') {
                print('The account already exists for that email.');
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('The account already exists for that email.'),));
              }
            } catch (e) {
              print(e);
            }
           }else{
            print('Non valid');
           }
                },),
              const  SizedBox(height: 14,),
                Lastpart2(pharse: 'already have an account?', Link:'Sign In'),
                SizedBox(height: 10,),
                 Buttongoogle(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}