import 'package:flutter/material.dart';
import 'package:logfits/screens/get_start/getstart.dart';
import 'package:logfits/screens/login/login.dart';
import 'package:logfits/screens/register/register.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(scaffoldBackgroundColor: Color(0xFFF5F4EC)),
      debugShowCheckedModeBanner: false,
      home: RegisterPage(
        
      ),
    );
  }
}