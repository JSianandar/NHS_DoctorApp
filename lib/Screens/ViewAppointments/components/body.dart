import 'package:flutter/material.dart';
import 'package:nhs_doctorapp/Screens/ViewAppointments//components/background.dart';
import 'package:nhs_doctorapp/components/rounded_button.dart';
import 'package:nhs_doctorapp/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SvgPicture.asset(
              "assets/icons/chat.svg",
              color: Color.fromRGBO(255, 255, 255, 0.0),
              colorBlendMode: BlendMode.modulate,
              height: size.height * 0.40,
            ),
            Text(
              "VIEWING APPOINTMENTS",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(height: 10,),
            Text(
              "SCHEDULE",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text(
                    "9 A.M. - 12 P.M. - Mr. Williams",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(width: 30,),
                Icon(Icons.phone),
                Icon(Icons.email),
                Icon(Icons.chat),
              ],
            ),
            SizedBox(height: 30,),
            Text("STILL ON PROCESS"),
          ],
        ),
      ),
    );
  }
}
