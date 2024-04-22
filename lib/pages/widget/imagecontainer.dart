
import 'package:flutter/material.dart';

class Imagecontainer extends StatelessWidget {
  const Imagecontainer({
    super.key, required this.image, required this.height, required this.widget,
  });
final String image;
final double height;
final double widget;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        width: widget,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill
            ,
          ),
        ),
      ),
    );
  }
}
