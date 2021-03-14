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
        alignment: Alignment.center,
        children:<Widget>[
          Positioned(
            bottom: 0,
            left: -20,
            child: Image.asset(
              "assets/images/image-removebg-preview.png",
              width: size.width * 1.1,
            ),
          ),
          Positioned(
            bottom: 5,
            right: 5,
            child: Image.asset(
              "assets/images/1280px-NHS-Logo.svg.png",
              width: size.width * 0.1,
            ),
          ),
          Positioned(
            bottom: 37.5,
            child: Image.asset(
              "assets/images/bluecircle.png",
              width: size.width * 0.8,
              color: Color.fromRGBO(255, 255, 255, 0.5),
              colorBlendMode: BlendMode.modulate,
            ),
          ),
          Positioned(
            bottom: 50,
            child: Image.asset(
              "assets/images/greencircle.png",
              width: size.width * 0.7,
              color: Color.fromRGBO(255, 255, 255, 0.5),
              colorBlendMode: BlendMode.modulate,
            ),
          ),
          child,
        ],
      ),
    );
  }
}