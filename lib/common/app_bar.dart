import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final List<Widget>? actions;

  const CustomAppBar({Key? key, required this.title, this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF135D66),
      title: Text(title),
      centerTitle: true,
      actions: actions,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(2.h),
              bottomRight: Radius.circular(2.h))),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(7.h);
}
