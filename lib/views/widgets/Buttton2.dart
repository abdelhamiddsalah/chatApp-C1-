import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class Buttton2 extends StatelessWidget {
   Buttton2({super.key, required this.titleButton,required this.ontap});
  String titleButton;
  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      child: MaterialButton(onPressed: ontap,
      child: Text(titleButton, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),),
      ),
    );
  }
}