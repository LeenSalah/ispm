import 'package:flutter/material.dart';
import 'package:ispm/Screens/Users.dart';
import 'package:ispm/Screens/signup.dart';
import 'package:sizer/sizer.dart';

import '../common/app_bar.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Login Page'),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 5.w,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'National ID',
              ),
            ),
             SizedBox(height: 2.h),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
             SizedBox(height: 2.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.w, vertical: 3.h),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff135D66),
                  fixedSize:  Size(2.h, 15.w),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Users()),
                  );
                },
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
             SizedBox(height: 2.h),
            Column(
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(fontSize: 20.0),
                ),
                 SizedBox(height: 2.h),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff135D66),
                    fixedSize:  Size(20.h, 15.w)
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp()),
                    );
                  },
                  child: const Text(
                    'SignUp',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
