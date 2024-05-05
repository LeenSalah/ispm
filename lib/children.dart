import 'package:flutter/material.dart';
import 'package:ispm/child_vaccines.dart';
import 'package:ispm/common/app_bar.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:sizer/sizer.dart';

import 'models/children_model.dart';

class ChildrenPage extends StatefulWidget {
  const ChildrenPage({Key? key}) : super(key: key);

  @override
  State<ChildrenPage> createState() => _ChildrenPageState();
}

class _ChildrenPageState extends State<ChildrenPage> {
  List<Child> children = [];

  @override
  void initState() {
    super.initState();
    _fillChildren();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'children',
        actions: [
          const Icon(Icons.notifications),
          SizedBox(
            width: 4.w,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      PersistentNavBarNavigator.pushNewScreen(
                        context,
                        screen: const ChildVaccinesPage(),
                        customPageRoute: MaterialPageRoute(
                            builder: (context) => const ChildVaccinesPage(),
                            settings: RouteSettings(arguments: children[index])),
                        withNavBar: false,
                      );
                    },
                    child: ListTile(
                        title: Text(children[index].name),
                        tileColor: index % 2 == 0
                            ? Colors.transparent
                            : const Color(0xFF135D66),
                        textColor: index % 2 == 0 ? Colors.black : Colors.white)),
                itemCount: children.length,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _fillChildren() {
    children.add(Child(
        name: 'Jane Doe',
        dateOfBirth: '30/4/2020',
        age: '4y',
        weight: '18kg',
        height: '108.5cm'));
    children.add(Child(
        name: 'John Doe',
        dateOfBirth: '22/1/2024',
        age: '4mon',
        weight: '7kg',
        height: '64cm'));
    children.add(Child(
        name: 'Harrison Doe',
        dateOfBirth: '8/10/2022',
        age: '1.5y',
        weight: '11kg',
        height: '82cm'));
  }
}
