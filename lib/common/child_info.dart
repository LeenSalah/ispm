import 'package:flutter/material.dart';
import 'package:ispm/models/children_model.dart';
import 'package:sizer/sizer.dart';

class ChildInfo extends StatelessWidget {
  final Child child;
  const ChildInfo({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.h,
      decoration: BoxDecoration(
        color: const Color(0xFFF1F1F1),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(child.name),
              Text(child.dateOfBirth)
            ],
          ),
          SizedBox(height: 3.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(child.age),
              Text(child.weight),
              Text(child.height),
            ],
          )
        ],
      ),
    );
  }
}
