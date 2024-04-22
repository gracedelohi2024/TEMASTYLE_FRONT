import 'package:flutter/material.dart';

import 'widget/widget.dart';

class ChoixPage extends StatefulWidget {
  const ChoixPage({super.key});

  @override
  State<ChoixPage> createState() => _ChoixPageState();
}

class _ChoixPageState extends State<ChoixPage> {
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "VOUS ETES HOMMES OU FEMMES?",
              style: TextStyle(color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Imagecontainer(
                        image: "assets/homme.png",
                        height: 120,
                        widget: 120,
                      ),
                      Radio<int>(
                        value: 1,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Imagecontainer(
                        image: "assets/femme.png",
                        height: 120,
                        widget: 120,
                      ),
                      Radio<int>(
                        value: 2,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ButtonWidget(
              onPressed: () {
                if (selectedOption == 1) {
                  Navigator.pushNamed(context, "/morphologieh");
                } else {
                  Navigator.pushNamed(context, "/morphologie");
                }
              },
              text: "Valider...",
            ),
          ],
        ),
      ),
    );
  }
}
