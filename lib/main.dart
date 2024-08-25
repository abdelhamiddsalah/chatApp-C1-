import 'package:chatt/firebase_options.dart';
import 'package:chatt/views/pages/Chat.dart';
import 'package:chatt/views/pages/Register.dart';
import 'package:chatt/views/pages/Sign_In.dart';
import 'package:chatt/views/widgets/ListChhat.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 @override
  void initState() {
    FirebaseAuth.instance
  .authStateChanges()
  .listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
    super.initState();
  }
  @override
  
  Widget build(BuildContext context) {
    return ScreenUtilInit(
          designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
    return MaterialApp(
      title: 'Chat App',
  debugShowCheckedModeBanner: false,
  routes: {
    'signin': (context) => const SignIn(),
    'register': (context) =>  Register(),
    'chat': (context) =>  Chat(),
  },
      home: Register(),
    );
      },
    );
  
  }
}

