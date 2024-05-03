import 'package:flutter/material.dart';
import 'package:ispm/Screens/signup.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(80.0),
          child: const Text(
            'Login Page',
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
                child: const Text('Login', style: TextStyle(fontSize: 20),),
              ),
            ),
            const SizedBox(height: 10.0),
            Column(
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff135D66),
                    fixedSize: Size(200, 55)
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  SignUp()),
                    );

                  },
                  child: const Text(
                    'SignUp',
                    style: TextStyle(fontSize: 20.0),
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
