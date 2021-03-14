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
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 0,
            right: 50,
            child: Image.asset("assets/images/image-removebg-preview.png",
              width: size.width * 0.27,
              color: Color.fromRGBO(255, 255, 255, 0.7),
              colorBlendMode: BlendMode.modulate,
            ),
          ),
          Positioned(
            top: -175,
            child: Image.asset("assets/images/image-removebg-preview (14).png",
              width: size.width * 1.3,
            ),
          ),
          child,
        ],
      ),
    );
  }
}