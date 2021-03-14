import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nhs_doctorapp/Screens/Login/login_screen.dart';
import 'package:nhs_doctorapp/Screens/SignUp/components/background.dart';
import 'package:nhs_doctorapp/Screens/SignUp/components/or_divider.dart';
import 'package:nhs_doctorapp/Screens/SignUp/components/social_icon.dart';
import 'package:nhs_doctorapp/components/already_have_an_account_check.dart';
import 'package:nhs_doctorapp/components/rounded_input_field.dart';
import 'package:nhs_doctorapp/components/rounded_password_field.dart';
import 'package:nhs_doctorapp/components/rounded_confirm_password_field.dart';
import 'package:nhs_doctorapp/components/rounded_email_input_field.dart';
import 'package:nhs_doctorapp/components/rounded_address_input_field.dart';
import 'package:nhs_doctorapp/components/rounded_button.dart';
import 'package:nhs_doctorapp/components/rounded_button.dart';
import 'package:nhs_doctorapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizedBox widespace = SizedBox(width: 5);
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign Up",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                widespace,
                Expanded(
                  child: RoundedInputField(
                    hintText: "First Name",
                    onChanged: (value) {},
                  ),
                ),
                widespace,
                Expanded(
                  child: RoundedInputField(
                    hintText: "Last Name",
                    onChanged: (value) {},
                  ),
                ),
                widespace,
              ],
            ),
            RoundedInputField(
              hintText: "Username",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedConfirmPasswordField(
              onChanged: (value) {},
            ),
            RoundedEmailInputField(
              hintText: "Email",
              onChanged: (value){},
            ),
            RoundedAddressInputField(
              hintText: "Address",
              onChanged: (value){},
            ),
            RoundedButton(
              text: "Sign Up",
              press: () {},
            ),
            SizedBox(
              height: 15,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
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





