import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tema_style_application/pages/accueil.dart';
import 'package:tema_style_application/pages/choixpage.dart';
import 'package:tema_style_application/pages/incription.dart';
import 'package:tema_style_application/pages/login.dart';
import 'package:tema_style_application/pages/morphologie.dart';

import 'pages/garderobe.dart';
import 'pages/morphologieh.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.pink.shade100,
        inputDecorationTheme: InputDecorationTheme(
        
          filled: true,
          fillColor: const Color.fromARGB(239, 247, 247, 247),
          border: OutlineInputBorder(borderSide: const BorderSide(color:Colors.black,width: 10),

          borderRadius: BorderRadius.circular(30)
        )),
      textTheme: TextTheme(
        displayMedium: GoogleFonts.abyssinicaSil(color:Colors.black,fontSize:24,fontWeight:FontWeight.bold),
        displayLarge: GoogleFonts.abyssinicaSil(color:Colors.black,fontSize:30,fontWeight:FontWeight.bold),
        bodySmall: GoogleFonts.abyssinicaSil(color:Colors.black,fontSize:16,fontWeight:FontWeight.bold),
        bodyMedium: GoogleFonts.abyssinicaSil(color:Colors.black,fontSize:20,fontWeight:FontWeight.bold),
        bodyLarge: GoogleFonts.abyssinicaSil(color:Colors.black,fontSize:24,fontWeight:FontWeight.bold),),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "/":(context) => const Accueil(),
        "/login":(context) =>  Login(),
         "/incription":(context) =>  Inscription(),
         "/choixpage":(context) => const ChoixPage(),
         "/morphologie":(context) => const Morphologie(),
          "/morphologieh":(context) => const Morphologieh(),
          "/garderobe":(context) => const Garderobe()
      },
      initialRoute: "/",
    );
  }
}

