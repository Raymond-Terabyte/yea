import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());

  //To scare the android users
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //    systemNavigationBarColor: Color(0xFFB71C1C), 
    //  systemNavigationBarIconBrightness: Brightness.light,)
     
}

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Bottom Navigation Bar',
      home: LoginScreen(),
    );
  }
}