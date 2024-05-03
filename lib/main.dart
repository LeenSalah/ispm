import 'package:flutter/material.dart';

import 'Screens/Home.dart';
void main (){
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

