import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/doctor_app_theme.dart';
import 'package:flutter_doctor_app/screens/doctor_detail_screen.dart';
import 'package:flutter_doctor_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: DoctorAppTheme.lightTheme,
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreen(),
        "/doctor_details": (context) => DoctorDetailScreen()
      },
    );
  }
}
