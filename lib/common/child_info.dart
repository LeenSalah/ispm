import 'package:flutter/material.dart';
import 'package:ispm/models/children_model.dart';
import 'package:sizer/sizer.dart';

class ChildInfo extends StatelessWidget {
  final Child child;
  const ChildInfo({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.h,
      decoration: const BoxDecoration(
        color: Color(0xFFF1F1F1),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(child.name),
              Text(child.dateOfBirth)
            ],
          ),
          Row(
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
