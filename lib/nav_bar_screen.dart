import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ispm/children.dart';
import 'package:ispm/individuals.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({Key? key}) : super(key: key);
  final PersistentTabController controller =
      PersistentTabController(initialIndex: 0);
  final List<Widget> screens = [const IndividualsPage(), const ChildrenPage()];
  final List<PersistentBottomNavBarItem> items = [
    PersistentBottomNavBarItem(icon: Icon(Icons.person, size: 7.w,), title: 'Individual', activeColorPrimary: Color(0xFF135D66), inactiveColorPrimary: CupertinoColors.systemGrey2),
    PersistentBottomNavBarItem(icon: Icon(FontAwesomeIcons.baby, size: 7.w,), title: 'children', activeColorPrimary: Color(0xFF135D66), inactiveColorPrimary: CupertinoColors.systemGrey2),
  ];

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: screens,
      items: items,
      navBarStyle: NavBarStyle.style9,
      navBarHeight: 9.h,
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.easeIn,
        duration: Duration(milliseconds: 300)
      ),
    );
  }
}
