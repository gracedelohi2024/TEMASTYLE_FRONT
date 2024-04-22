

import 'package:flutter/material.dart';

import 'widget/widget.dart';

class Morphologie extends StatelessWidget {
  const Morphologie({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("VOTRE MORPHOLOGIE",style: TextStyle(color: Colors.black),),
            const Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Imagecontainer(
                        image: "assets/h.png",
                        height: 200,
                        widget: 120,
                      ),
                       Text("H"),
                    ],
                  ),
                Column(
                    children: [
                      Imagecontainer(
                        image: "assets/o.png",
                        height: 200,
                        widget: 120,
                      ),
                      Text("O"),
                    ],
                  ),
                ],
              ),
            ),
                     const Column(
                    children: [
                      Imagecontainer(
                        image: "assets/v.png",
                        height: 200,
                        widget: 120,
                      ),
                      Text("V"),
                    ],
                  ),
             Row(
             mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 ButtonWidget(onPressed: (){},text: "Suivant",),
               ],
             ),
          ],
        ),
      ),
    );
    
  }
}