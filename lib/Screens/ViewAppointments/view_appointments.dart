import 'package:flutter/material.dart';
import 'package:nhs_doctorapp/Screens/Dashboard/grid_dashboard.dart';
import 'package:nhs_doctorapp/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class ViewAppointments extends StatefulWidget {
  @override
  _ViewAppointmentsState createState() => _ViewAppointmentsState();
}

class _ViewAppointmentsState extends State<ViewAppointments> {
  CalendarController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          'NHS Doctor App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        actions:<Widget> [
          IconButton(icon: Icon(Icons.notifications_active), onPressed: (){}
          ),
        ],
      ),
      body: SingleChildScrollView(

      ),
    );
  }
}
