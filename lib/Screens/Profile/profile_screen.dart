import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:nhs_doctorapp/constants.dart';
import 'package:nhs_doctorapp/Screens/AppointmentDetails/gridicons.dart';
import 'package:nhs_doctorapp/components/rounded_button.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            color: kPrimaryLightColor,
          ),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: kPrimaryColor,
            title:
            Image.asset(
              "assets/images/White-01-01.png",
              fit: BoxFit.contain,
              height: 55,
            ),
            actions:<Widget> [
              IconButton(icon: Icon(Icons.notifications_active), onPressed: (){}
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                children: [
                  Container(
                    height: height * 0.3,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.green[300],
                      image: DecorationImage(
                          image: AssetImage("assets/images/purepng.com-doctorsdoctorsdoctors-and-nursesa-qualified-practitioner-of-medicine-aclinicianmedical-practitionermale-doctornotepad-1421526857009zrma0.png")
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'DR. JASON ADAMS, 35',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'M.Sc - Anatomy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'General Physician, 12 Years Experience',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                      ),
                      Icon(
                        Icons.home,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        "Full Address",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                            fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    ' Jl Cipinang Pisangan 130, DKI Jakarta, Indonesia, 13230 ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),

                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                      ),
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        "Phone Number",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    ' +62 812 9000 9445  ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                      ),
                      Icon(
                        Icons.email,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    ' jasonadams132@gmail.com ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),


                  SizedBox(
                    height: 10,
                  ),
                  RoundedButton(
                    text: "Edit Profile",
                    press: (){},
                  ),

                  RoundedButton(
                    text: "Upload Certificates",
                    color: Colors.red,
                    press: (){},
                  ),

                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
