import 'package:flutter/material.dart';
import 'package:nhs_doctorapp/constants.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Divider(
              color: kPrimaryColor,
              height: 1.5,
            ),
          ),
          Text(
            "OR",
            style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w600
            ),
          ),
          Expanded(
            child: Divider(
              color: kPrimaryColor,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}