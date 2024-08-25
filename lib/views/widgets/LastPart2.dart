import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class Lastpart2 extends StatelessWidget {
   Lastpart2({super.key, required this.pharse, required this.Link});
  String pharse;
  String Link;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(pharse, style: TextStyle(color: Colors.white, fontSize: 15.sp),),
        MaterialButton(onPressed: (){
      Navigator.pop(context);
        }, child: Text(Link, style: TextStyle(color: Colors.white, fontSize: 16.sp),),)
      ],
    );
  }
}