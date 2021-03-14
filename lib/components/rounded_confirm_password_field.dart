import 'package:flutter/material.dart';
import 'package:nhs_doctorapp/components/text_field_container.dart';
import 'package:nhs_doctorapp/constants.dart';

class RoundedConfirmPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedConfirmPasswordField({
    Key key, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        style: TextStyle(fontSize: 15),
        decoration: InputDecoration(
          hintText: "Confirm Password",
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
    );
  }
}