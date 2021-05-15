import 'package:flutter/material.dart';
import 'file:///D:/NHSDoctorApp/nhs_doctorapp/lib/Screens/Welcome/welcome_screen.dart';
import 'package:nhs_doctorapp/constants.dart';
import 'package:nhs_doctorapp/Screens/Dashboard/dashboard.dart';
import 'package:nhs_doctorapp/Screens/Login/login_screen.dart';

void main() => runApp(new NHSDoctorApp() );

class NHSDoctorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NHS Doctor App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.lightGreen[100],
      ),
      home: new WelcomeScreen(),
    );
  }
}
