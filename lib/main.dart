import 'package:flutter/material.dart';
import 'package:ispm/nav_bar_screen.dart';
import 'package:sizer/sizer.dart';

import 'Screens/Home.dart';
void main (){
  runApp(const Ispm());
}

class Ispm extends StatefulWidget {
  const Ispm({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: false),
           home: Home(),
    });
  }
}

