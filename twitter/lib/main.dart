import 'package:flutter/material.dart';
import 'package:twitter/screens/password_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Twitter',
      home: const PasswordScreen(),
      theme: ThemeData(
        primaryColor: const Color(0xff1DA1F2),
      ),
    );
  }
}
