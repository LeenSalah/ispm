import 'package:flutter/material.dart';
import 'package:ispm/Screens/Provider.dart';
import 'package:ispm/Screens/health_care_official.dart';
import 'package:ispm/Screens/nav_bar_screen.dart';
import 'package:sizer/sizer.dart';

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
                    fixedSize: const Size(250, 53)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HealthCareOfficialPage()),
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
                    fixedSize: const Size(250, 53)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  BottomNavBar()),
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
                    fixedSize: const Size(250, 53)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  Provider()),
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
