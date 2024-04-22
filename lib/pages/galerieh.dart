import 'package:flutter/material.dart';

import 'widget/widget.dart';

class Galerieh extends StatelessWidget {
  const Galerieh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Imagecontainer(
                  image: "assets/homme.png",
                  height: 120,
                  widget: 120,
                ),
                Imagecontainer(
                  image: "assets/femme.png",
                  height: 120,
                  widget: 120,
                ),
                                Imagecontainer(
                    image: "assets/femme.png",
                    height: 120,
                    widget: 120,
                  ),
              ],
            ),
               Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Imagecontainer(
                  image: "assets/homme.png",
                  height: 120,
                  widget: 120,
                ),
                Imagecontainer(
                  image: "assets/femme.png",
                  height: 120,
                  widget: 120,
                ),
                                Imagecontainer(
                    image: "assets/femme.png",
                    height: 120,
                    widget: 120,
                  ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Imagecontainer(
                  image: "assets/homme.png",
                  height: 120,
                  widget: 120,
                ),
                Imagecontainer(
                  image: "assets/femme.png",
                  height: 120,
                  widget: 120,
                ),
                                Imagecontainer(
                    image: "assets/femme.png",
                    height: 120,
                    widget: 120,
                  ),
              ],
            ),
         
          ],
        ),
      ),
    );
  }
}
