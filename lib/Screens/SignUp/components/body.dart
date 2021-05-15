import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nhs_doctorapp/Screens/Login/login_screen.dart';
import 'package:nhs_doctorapp/Screens/SignUp/components/background.dart';
import 'package:nhs_doctorapp/Screens/SignUp/components/or_divider.dart';
import 'package:nhs_doctorapp/Screens/SignUp/components/social_icon.dart';
import 'package:nhs_doctorapp/components/already_have_an_account_check.dart';
import 'package:nhs_doctorapp/components//SignUp/rounded_username_field.dart';
import 'package:nhs_doctorapp/components/SignUp/rounded_password_field.dart';
import 'package:nhs_doctorapp/components/SignUp/rounded_su_email_field.dart';
import 'package:nhs_doctorapp/components/SignUp/rounded_fname_field.dart';
import 'package:nhs_doctorapp/components/SignUp/rounded_lname_field.dart';

import 'package:nhs_doctorapp/components/rounded_address_input_field.dart';
import 'package:nhs_doctorapp/components/rounded_button.dart';
import 'package:nhs_doctorapp/components/rounded_button.dart';
import 'package:nhs_doctorapp/components/text_field_container.dart';
import 'package:nhs_doctorapp/constants.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController user = TextEditingController();

  TextEditingController pass = TextEditingController();

  TextEditingController fname = TextEditingController();

  TextEditingController lname = TextEditingController();

  TextEditingController email = TextEditingController();

  /*Future register()async{
    print("goes");
    print("User: " + user.text);
    print("Pass" + pass.text);
    var url = "https://192.168.1.10/NHSDoctorApp_Validation/register.php";
    var response = await http.post(url, body: {
      "username" : user.text,
      "password" : pass.text,
      "fname"    : fname.text,
      "lname"    : lname.text,
      "email"    : email.text,
    });

    var data = jsonDecode(response.body);
    if (data == "Error") {
      Fluttertoast.showToast(
          msg: "Sign Up Failed",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );

    }
    else{
      Fluttertoast.showToast(
          msg: "Sign Up Successful",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
  }*/

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
                  child: TextFieldContainer(
                    child: TextField(
                      controller: fname,
                      style: TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: kPrimaryColor,
                        ),
                        hintText: "First Name",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                widespace,
                Expanded(
                  child: TextFieldContainer(
                    child: TextField(
                      controller: lname,
                      style: TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: kPrimaryColor,
                        ),
                        hintText: "Last Name",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                widespace,
              ],
            ),
            TextFieldContainer(
              child: TextField(
                controller: user,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: kPrimaryColor,
                  ),
                  hintText: "Username",
                  border: InputBorder.none,
                ),
              ),
            ),
            TextFieldContainer(
              child: TextField(
                obscureText: true,
                controller: pass,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  hintText: "Password",
                  icon: Icon(
                    Icons.lock,
                    color: kPrimaryColor,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: kPrimaryColor,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            TextFieldContainer(
              child: TextField(
                controller: email,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: kPrimaryColor,
                  ),
                  hintText: "Email",
                  border: InputBorder.none,
                ),
              ),
            ),

            RoundedAddressInputField(
              hintText: "Address",
              onChanged: (value){},
            ),
            RoundedButton(
              text: "Sign Up",
              press: () {
                //register();
                },
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





