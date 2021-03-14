import 'package:flutter/material.dart';
import 'package:nhs_doctorapp/components/text_field_container.dart';
import 'package:nhs_doctorapp/constants.dart';

class RoundedAddressInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedAddressInputField({
    Key key,
    this.hintText,
    this.icon = Icons.home,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        style: TextStyle(fontSize: 15),
        maxLength: 100,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}