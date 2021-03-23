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
            top: 175,
            child: Image.asset(
              "assets/images/WhatsApp Image 2021-03-18 at 13.24.24.jpeg",
              width: size.width * 0.6,
              color: Color.fromRGBO(255, 255, 255, 0.8),
              colorBlendMode: BlendMode.modulate,
            ),
          ),
          Positioned(
            bottom: 5,
            right: 0,
            child: Image.asset(
              "assets/images/image-removebg-preview.png",
              width: size.width * 0.2,
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