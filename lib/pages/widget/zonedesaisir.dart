import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Zonedesaisirwidget extends StatelessWidget {
  const Zonedesaisirwidget({
    super.key, required this.textentrer, required this.controller,
  });
final String textentrer;
final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text( textentrer),Container(
          margin: EdgeInsets.all(5),
          height: 40,
          child: TextFormField(controller: controller,))],
      ),
    );
  }
}
