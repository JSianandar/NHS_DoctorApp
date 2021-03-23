import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nhs_doctorapp/Screens/Login/components/background.dart';
import 'package:nhs_doctorapp/Screens/SignUp/components/or_divider.dart';
import 'package:nhs_doctorapp/Screens/SignUp/components/social_icon.dart';
import 'package:nhs_doctorapp/Screens/SignUp/signup_screen.dart';
import 'package:nhs_doctorapp/Screens/Dashboard/dashboard.dart';
import 'package:nhs_doctorapp/components/already_have_an_account_check.dart';
import 'package:nhs_doctorapp/components/rounded_button.dart';
import 'package:nhs_doctorapp/components/rounded_input_field.dart';
import 'package:nhs_doctorapp/components/rounded_password_field.dart';
import 'package:nhs_doctorapp/components/text_field_container.dart';
import 'package:nhs_doctorapp/constants.dart';


class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                "Log In",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              width: 10,
              height: 20,
            ),
            Image.asset(
              "assets/images/WhatsApp Image 2021-03-18 at 13.24.24.jpeg",
              height: size.height * 0.13,
              color: Color.fromRGBO(255, 255, 255, 1.0),
              colorBlendMode: BlendMode.modulate,
            ),
            SizedBox(
              width: 10,
              height: 20,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(onChanged: (value){},
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            RoundedButton(
              text: "Log In",
              press: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Dashboard();
                  },
                ),
              );},
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            AlreadyHaveAnAccountCheck(
              press: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );},
            ),
            SizedBox(
              height: 10,
            ),
            OrDivider(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: (){},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: (){},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: (){},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}








