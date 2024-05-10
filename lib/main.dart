import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'Screens/Home.dart';

void main() {
  runApp(const Ispm());
}

class Ispm extends StatefulWidget {
  const Ispm({super.key});

  @override
  State<Ispm> createState() => _IspmState();
}

class _IspmState extends State<Ispm> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: false,
          inputDecorationTheme: const InputDecorationTheme(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff135D66)),
            ),
          ),
        ),
        home: Home(),
      );
    });
  }
}
