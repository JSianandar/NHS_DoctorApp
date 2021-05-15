import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:nhs_doctorapp/constants.dart';
import 'package:nhs_doctorapp/Screens/AppointmentDetails/gridicons.dart';
import 'package:nhs_doctorapp/components/rounded_button.dart';
import 'package:nhs_doctorapp/Screens/PatientList/PatientDetail.dart';

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

class PatientList extends StatefulWidget {
  @override
  _PatientListState createState() => new _PatientListState();
}

class _PatientListState extends State<PatientList> {
  
  Future<List> getPatients() async {
    final response = await http.get("http://10.0.2.2/nhsvalidation/getpatient.php");
    return json.decode(response.body);
  }
  
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
      body:  new FutureBuilder<List>(
        future: getPatients(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? new ItemList(list: snapshot.data,)
              : new Center(child: new CircularProgressIndicator(),);
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget{

  final List list;
  ItemList({this.list});

  @override
  Widget build (BuildContext context)
  {
    return new ListView.builder(
      itemCount: list==null ? 0: list.length,
      itemBuilder: (context, i){
        return new Container(
          padding: const EdgeInsets.all(10.0),
          child: new GestureDetector(
            onTap: ()=>Navigator.of(context).push(
              new MaterialPageRoute(
                  builder: (BuildContext context)=> new PatientDetail(list: list, index: i,))
            ),
            child: new Card(
              color: kPrimaryColor,
              child: new ListTile(
                title: new Text(list[i]['title']+" "+list[i]['fname']+" "+list[i]['lname'], style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                leading: new Icon(Icons.people),
                subtitle: new Text("PubPID: ${list[i]['pubpid']} ", style: TextStyle(fontSize: 20.0)),
              ),
            ),
          ),
        );
      },
    );
  }
}
