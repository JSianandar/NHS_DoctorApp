import 'package:flutter/material.dart';
import 'package:nhs_doctorapp/constants.dart';

class PatientDetail extends StatefulWidget {
  List list;
  int index;
  PatientDetail({this.index, this.list});
  @override
  _PatientDetailState createState() => _PatientDetailState();
}

class _PatientDetailState extends State<PatientDetail> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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

      body: new Container(
        padding: const EdgeInsets.all(20.0),
        child: new Card(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text(
                    widget.list[widget.index]['title']+" "+ widget.list[widget.index]['fname'] + " " + widget.list[widget.index]['lname'],
                style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                new SizedBox(
                  height: 10,
                ),
                new Text("Date of Birth: " + widget.list[widget.index]['DOB'], style: new TextStyle(fontSize: 20.0)),
                new SizedBox(
                  height: 10,
                ),
                new Text("Country: " + widget.list[widget.index]['country_code'], style: new TextStyle(fontSize: 20.0)),
                new SizedBox(
                  height: 10,
                ),
                new Text("Gender: " + widget.list[widget.index]['sex'], style: new TextStyle(fontSize: 20.0)),
                new SizedBox(
                  height: 10,
                ),
                new Text("PubPID: " + widget.list[widget.index]['pubpid'], style: new TextStyle(fontSize: 20.0)),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
