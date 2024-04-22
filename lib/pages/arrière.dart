import 'package:flutter/material.dart';

class Imagecontainer extends StatelessWidget {
  const Imagecontainer({
    super.key, required this.image,
  });
final String image;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

