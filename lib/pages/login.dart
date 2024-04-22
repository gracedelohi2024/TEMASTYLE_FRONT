import 'package:flutter/material.dart';
import 'package:tema_style_application/service/srv-connction.dart';

import 'widget/widget.dart';

class Login extends StatelessWidget {
   Login({super.key});
TextEditingController noncontroller=TextEditingController();
TextEditingController motdepasscontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      body:  SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("LOGIN"),
               Zonedesaisirwidget(controller: noncontroller,
                textentrer: "Nom utilisateur",
              ),
               Motdepasse(controller: motdepasscontroller,
                textentrer: "Mot de passe",
              ),
              const Text("Ou continuer avec"),
              const Padding(
                padding: EdgeInsets.only(left: 100,right: 100),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Imagecontainer(image: "assets/apple.png",height: 50,widget: 50,),
                     Imagecontainer(image: "assets/google.png",height: 50,widget: 50,),
                      Imagecontainer(image: "assets/twitter.png",height: 50,widget: 50,),
                  ],
                ),
              
              ),
                ButtonWidget(onPressed: (
         ) async{


                  Future <Map<String, dynamic>>mresponse= SrvConnection().connection(email: noncontroller.text, mp: motdepasscontroller.text);
                  await mresponse.then((response){
                    print(response);

                    if(response['status']==true){

                      Navigator.pushNamed(context,"/choixpage");

                    }else if(response['status']==false){

                      showDialog<void>(
                        context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Message'),
                            content:  SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Text(response['message']),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('ok'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    }

                  });
              //    Navigator.pushNamed(context,"/incription");





                  },text: "se connecter",),
                TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 14, color:Colors.black ),
            ),
            onPressed: () async {
              Navigator.pushNamed(context,"/incription");

            },
            child: const Text('inscrivez vous'),
          ),
                //Text("Pas de compte ? ")

            ],
          ),
        ),
      ),
    );
  }
}
