import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

runApp(const MyApp());

}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       body: Container(

         child:
         Center(child: Text('waqas',style: GoogleFonts.abhayaLibre(),)),
       ),



      ),

      );



  }
}


