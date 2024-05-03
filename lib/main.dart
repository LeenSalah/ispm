import 'package:flutter/material.dart';
import 'package:ispm/individuals.dart';
import 'package:ispm/nav_bar_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: false),
          home: BottomNavBar());
    });
  }
}
