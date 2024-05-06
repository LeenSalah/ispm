import 'package:flutter/material.dart';
import 'package:ispm/Screens/provider.dart';

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
        padding: const EdgeInsets.symmetric(vertical: 330, horizontal: 8),
        child: Row(
          children: [
            Column(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff135D66),
                        fixedSize: const Size(190, 55)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Provider()),
                      );
                    },
                    child: const Text(
                      "Provider",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    )),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff135D66),
                        fixedSize: const Size(190, 55)),
                    onPressed: () {},
                    child: const Text(
                      "Provider",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    )),
              ],
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff135D66),
                        fixedSize: const Size(190, 55)),
                    onPressed: () {},
                    child: const Text(
                      "Provider",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    )),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff135D66),
                        fixedSize: const Size(190, 55)),
                    onPressed: () {},
                    child: const Text(
                      "Provider",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ))
              ],
            ),
          ],
        ),
      )
    ]));
  }
}
