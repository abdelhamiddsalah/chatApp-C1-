import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Partone extends StatelessWidget {
  const Partone({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/scholar.png'),
        Text('Scholar Chat', style: TextStyle(color: Colors.white, fontSize: 32.sp, fontWeight: FontWeight.bold),),
      ],
    );
  }
}