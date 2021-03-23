import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nhs_doctorapp/Screens/Login/login_screen.dart';
import 'package:nhs_doctorapp/Screens/SignUp/signup_screen.dart';
import 'package:nhs_doctorapp/Screens/Welcome/components/background.dart';
import 'package:nhs_doctorapp/components/rounded_button.dart';
import 'package:nhs_doctorapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO AntEMR",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SvgPicture.asset(
                "assets/icons/chat.svg",
                color: Color.fromRGBO(255, 255, 255, 0.0),
                colorBlendMode: BlendMode.modulate,
                height: size.height * 0.52,
            ),
            RoundedButton(
              text: "Log In",
              press: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "Sign Up",
              press: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );},
            ),
          ],
        ),
      ),
    );
  }
}



