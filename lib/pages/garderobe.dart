import 'package:flutter/material.dart';

import 'widget/widget.dart';

class Garderobe extends StatelessWidget {
  const Garderobe({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(appBar: AppBar(),
    body: Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(image: DecorationImage(
            image: AssetImage("assets/garderobe.jpg"),
            fit: BoxFit.cover
            ,
          ),),
          child: Column(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: ButtonWidget(
                        onPressed: () {},
                        text: "S'inscrire",
                      ),
              ),
            ],
          ),
          )
    );
  }
}