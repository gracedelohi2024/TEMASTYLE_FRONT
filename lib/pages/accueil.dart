import 'package:flutter/material.dart';

import 'widget/widget.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(width: size.width,
      height: size.height,
     decoration:    BoxDecoration(image: DecorationImage(
            image: AssetImage("assets/premierepage.jpg"),
            fit: BoxFit.cover
            ,
          ),),
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "TEMA STYLE",
                    style: TextStyle(fontSize: 30),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                Container(
                    width: 250,
                  decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient:
                 LinearGradient(colors: [Color.fromARGB(255, 197, 127, 34), Colors.purple.shade600]),
                  ),
                  child: ElevatedButton(
                          onPressed:(){
                            Navigator.pushNamed(context,"/login");
                          },
                          
                          child: const Text(
                            "commencer",
                          
                          ),
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(fontSize: 23, fontWeight: FontWeight.bold,color: Colors.white),
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                ),
                ],
              ),
            )),
      ),

      
    );
  }
}

