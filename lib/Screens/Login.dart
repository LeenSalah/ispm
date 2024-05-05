import 'package:flutter/material.dart';
import 'package:ispm/Screens/Users.dart';
import 'package:ispm/Screens/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text(
          'Login Page',
          style: TextStyle(fontSize: 22),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff135D66),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
                  backgroundColor: const Color(0xff135D66),
                  fixedSize: const Size(350, 50),
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
            const SizedBox(height: 10.0),
            Column(
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(fontSize: 20.0),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff135D66),
                      fixedSize: const Size(200, 55)),
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
