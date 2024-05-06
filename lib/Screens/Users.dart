import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../child_vaccines.dart';
import '../children.dart';
import '../individuals.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: [
      Image.asset(
        "assets/Users.png",
        fit: BoxFit.cover,
      ),
      Padding(
        padding:  EdgeInsets.symmetric(vertical: 35.h),
        child: Column(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff135D66),
                    fixedSize: const Size(250, 60)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChildrenPage()),
                  );
                },
                child: const Text(
                  "HealthCare official",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                )),
            SizedBox(
              height: 5.h,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff135D66),
                    fixedSize: const Size(250, 55)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const IndividualsPage()),
                  );
                },
                child: const Text(
                  "Individuals",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                )),
            SizedBox(
              height: 5.h,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff135D66),
                    fixedSize: const Size(250, 55)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const IndividualsPage()),
                  );
                },
                child: const Text(
                  "Provider",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ))
          ],
        ),
      ),
    ]));
  }
}
