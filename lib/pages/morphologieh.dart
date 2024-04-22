import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'widget/widget.dart';

class Morphologieh extends StatefulWidget {
  const Morphologieh({super.key});

  @override
  State<Morphologieh> createState() => _MorphologiehState();
}

class _MorphologiehState extends State<Morphologieh> {
  late bool v1, v2, v3;
  @override
  void initState() {
    v1 = false;
    v2 = false;
    v3 = false;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "VOTRE MORPHOLOGIE",
              style: TextStyle(color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        v1 = true;
                        v2 = false;
                        v3 = false;
                      });
                    },
                    child: Container(
                      decoration: v1 == true
                          ? BoxDecoration(
                              border:
                                  Border.all(color: Colors.yellow, width: 4))
                          : null,
                      child: Column(
                        children: [
                          const Imagecontainer(
                            image: "assets/hh.png",
                            height: 200,
                            widget: 120,
                          ),
                          const Text("H"),
                          Visibility(
                            visible: v1,
                            child: Container(
                                height: 2,
                                width: 10,
                                child: const Divider(
                                  color: Colors.yellow,
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Column(
                    children: [
                      Imagecontainer(
                        image: "assets/oh.png",
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
                  image: "assets/vh.png",
                  height: 200,
                  widget: 120,
                ),
                Text("V"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ButtonWidget(
                  onPressed: () {},
                  text: "Suivant",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
