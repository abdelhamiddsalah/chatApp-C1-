import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class Listviewssign extends StatelessWidget {
   Listviewssign({super.key, required this.title,required this.onChanged});
   Function(String) onChanged;
 String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(color: Colors.white, fontSize: 24.sp),),
          ],
        ),
      const  SizedBox(height: 16,),
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
      ],
    );
  }
}