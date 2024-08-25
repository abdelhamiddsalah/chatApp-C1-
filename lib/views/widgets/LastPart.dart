import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class Lastpart extends StatelessWidget {
   Lastpart({super.key, required this.pharse, required this.Link});
  String pharse;
  String Link;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(pharse, style: TextStyle(color: Colors.white, fontSize: 15.sp),),
        MaterialButton(onPressed: (){
      Navigator.pushNamed(context, 'register');
        }, child: Text(Link, style: TextStyle(color: Colors.white, fontSize: 16.sp),),)
      ],
    );
  }
}