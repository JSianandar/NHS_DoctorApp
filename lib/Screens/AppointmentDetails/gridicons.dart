import 'package:flutter/material.dart';
import 'package:nhs_doctorapp/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nhs_doctorapp/Screens/ViewAppointments/view_appointments.dart';

class GridIcons extends StatelessWidget {
  Item Item1 = new Item(
      title: "Profile",
      subtitle: "Mr. Jason Adams",
      img: "assets/images/unnamed.png"
  );

  Item Item2 = new Item(
      title: "Appointments",
      subtitle: "March 19, 2021",
      img: "assets/images/unnamed (1).png"
  );

  Item Item3 = new Item(
      title: "Settings",
      subtitle: "Advanced",
      img: "assets/images/unnamed (2).png"
  );

  Item Item4 = new Item(
      title: "Emergency",
      subtitle: "Services",
      img: "assets/images/medical-emergency-1561072-1322977.png"
  );




  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.count(
        childAspectRatio: 1.0,
        padding: EdgeInsets.only(left: 16, right: 16),
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  Item1.img,
                  width: 42,
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  Item1.title,
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  Item1.subtitle,
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: Colors.white38,
                          fontSize: 10,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 14,
                ),
              ],
            ),
          ),


          GestureDetector(
            onTap: () {
              Route route = MaterialPageRoute(
                  builder: (context) => ViewAppointments());
              Navigator.push(context, route);
            },
            child: Container(
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    Item2.img,
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    Item2.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    Item2.subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white38,
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                ],
              ),

            ),
          ),


          Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  Item3.img,
                  width: 42,
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  Item3.title,
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  Item3.subtitle,
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: Colors.white38,
                          fontSize: 10,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 14,
                ),
              ],
            ),
          ),


        ],

      ),
    );
  }
}

class Item{
  String title;
  String subtitle;
  String img;
  Item({this.title, this.subtitle, this.img});
}