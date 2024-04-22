import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key, required this.onPressed, required this.text,
  });
final VoidCallback  onPressed;
final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient:
             LinearGradient(colors: [Colors.purple.shade100, Colors.purple.shade400]),
      ),
      child: ElevatedButton(
        onPressed:
        
        onPressed,
        child: 
         Text(text
          ,
        
        ),
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold,color: Colors.yellow),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
