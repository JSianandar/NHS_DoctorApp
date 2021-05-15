import 'dart:convert';

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
import 'package:nhs_doctorapp/components/rounded_confirm_password_field.dart';
import 'package:nhs_doctorapp/components/text_field_container.dart';
import 'package:nhs_doctorapp/constants.dart';

import 'package:http/http.dart' as http;
import 'dart:async';

String username='';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  String msg='';

  TextEditingController user = new TextEditingController();
  TextEditingController password = new TextEditingController();

  Future<List> _login() async {
    print("Jalan");
    print("User: " + user.text);
    print("Pass: " + password.text);
    final response = await http.post("http://10.0.2.2/nhsvalidation/login.php",
    body:{
      "username" : user.text,
      "password" : password.text,
    });

    print(response.body);

    var datauser = json.decode(response.body);
    if(datauser.length==0){
      setState(() {
        msg="Login Failed. Try again";
      });
    }else{
      print("Welcome Doctor");
      Navigator.push(
        context,
          MaterialPageRoute(
            builder: (context) {
              return Dashboard();
            }
          ),
      );
      setState(() {
        username= datauser[0]['username'];
      });
    }

  }

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
            Image.asset(
              "assets/images/Colour-03.png",
              height: size.height * 0.15,
              color: Color.fromRGBO(255, 255, 255, 1.0),
              colorBlendMode: BlendMode.modulate,
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),

            TextFieldContainer(
              child: TextField(
                controller: user,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.people,
                    color: kPrimaryColor,
                  ),
                  hintText: "Your Username",
                  border: InputBorder.none,
                ),
              ),
            ),
            TextFieldContainer(
              child: TextField(
                obscureText: true,
                controller: password,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  hintText: "Your Password",
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

            SizedBox(
              width: 10,
              height: 10,
            ),
            RoundedButton(
              text: "Log In",
              press: () {
                _login();
                //   Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return Dashboard();
                //     },
                //   ),
                // );},
              },
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            Text(
              msg,style: TextStyle(
                fontSize: 20.0,color: Colors.red
              ),
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








