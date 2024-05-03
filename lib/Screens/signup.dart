import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(75.0),
            child: const Text(
              'SignUp page',
              style: TextStyle(fontSize: 22),
            ),
          ),
          backgroundColor: Color(0xff135D66),
        ),
        body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                    ),
                  ),
                  const SizedBox(height: 20.0),

                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'National ID',
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff135D66),
                        fixedSize: const Size(350, 50),
                      ),
                      onPressed: () {
                        // Add login logic here
                      },
                      child: const Text(
                        'SignUp',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ])));
  }
}
