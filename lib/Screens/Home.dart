import 'package:flutter/material.dart';
import 'package:ispm/Screens/Login.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/Home.png",
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 53.h,
            left: 30.w,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: const Color(0xffFEFAF6),
                fixedSize:  Size(20.h, 15.w),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const Login()),
                );
              },
              child: const Text(
                'Get Started',
                style: TextStyle(fontSize: 20, color: Color(0xff135D66),fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
