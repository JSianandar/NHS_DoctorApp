import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.topCenter,
        children:<Widget>[
          Row(
            children: [
              SizedBox(width: 10,),
              Text(
                "Mr. Adams, 30",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              SizedBox(width: 20,),
              Image.asset(
                "assets/images/image-removebg-preview (16).png",
                width: size.width * 0.4,
              ),
            ],
          ),
          Positioned(
            bottom: 5,
            right: 5,
            child: Image.asset(
              "assets/images/1280px-NHS-Logo.svg.png",
              width: size.width * 0.1,
            ),
          ),
          child,
        ],
      ),
    );
  }
}