import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../common/app_bar.dart';
import 'Users.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(title: 'SignUp page'),
        body: Padding(
            padding:  EdgeInsets.symmetric(vertical: 5.h, horizontal: 7.w),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                    ),
                  ),
                   SizedBox(height: 2.h),

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
                   SizedBox(height: 2.h ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 5.h, horizontal: 12.w),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff135D66),
                        fixedSize:  Size(15.h, 13.w),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  const Users()),
                        );
                      },
                      child: const Text(
                        'SignUp',
                        style: TextStyle(fontSize: 20,color: Colors.white),
                      ),
                    ),
                  ),
                ])));
  }
}
