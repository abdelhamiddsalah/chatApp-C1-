import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Chat extends StatelessWidget { // Convert to StatelessWidget if no state management is needed
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.all(13),
        height: 65.h,
        width: 180.w,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 18),
        decoration: BoxDecoration(
          color: Color(0xff2B475F),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Text(
          'Userrrrrrrrrrrrrrr',
          style: TextStyle(color: Colors.white),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
