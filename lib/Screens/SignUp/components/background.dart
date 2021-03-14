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
      // double.infinity is similar to size.width
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/images/image-removebg-preview.png",
              width: size.width * 0.3,
              color: Color.fromRGBO(255, 255, 255, 0.2),
              colorBlendMode: BlendMode.modulate,
            ),
          ),
          Positioned(
            top: -200,
            child: Image.asset("assets/images/image-removebg-preview (14).png",
              width: size.width * 1.0,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
