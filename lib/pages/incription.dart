import 'package:flutter/material.dart';

import 'widget/widget.dart';

class Inscription extends StatelessWidget {
   Inscription({super.key});
TextEditingController noncontroller=TextEditingController();
TextEditingController prenoncontroller=TextEditingController();
TextEditingController contactcontroller=TextEditingController();
TextEditingController emailcontroller=TextEditingController();

TextEditingController motdepasscontroller=TextEditingController();
TextEditingController cofmotdepasscontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("INSCRIPTION"),
                   Zonedesaisirwidget(
              controller: noncontroller,
                    textentrer: "Nom ",
                  ),
                   Zonedesaisirwidget(controller: prenoncontroller
                   ,
                    textentrer: "prenom ",
                  ),
                   Zonedesaisirwidget(controller: contactcontroller,
                    textentrer: "Contact ",
                  ),
                   Zonedesaisirwidget(controller: emailcontroller,
                    textentrer: "E-mail ",
                  ),
                  Motdepasse(
                    controller: motdepasscontroller,
                    textentrer: "Mot de passe",
                  ),
                   Motdepasse(controller: cofmotdepasscontroller,
                    textentrer: "confirmer le mot de passe",
                  ),
                 Padding(
                   padding: const EdgeInsets.all(18.0),
                   child: ButtonWidget(
                      onPressed: () { Navigator.pushNamed(context,"/choixpage");},
                      text: "S'inscrire",
                    ),
                 ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
