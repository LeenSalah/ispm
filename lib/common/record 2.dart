import 'package:flutter/material.dart';
import 'package:ispm/models/shot_record.dart';
import 'package:sizer/sizer.dart';

class RecordWidget extends StatelessWidget {
  final ShotRecord shot;
  const RecordWidget({Key? key, required this.shot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      decoration: BoxDecoration(color: const Color(0xFFF1F1F1),
        borderRadius: BorderRadius.circular(8)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              height: 6.h,
              width: 6.h,
              decoration: BoxDecoration(
                color: const Color(0xFF135D66),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset('assets/needle.png'),
              ),
            ),
            SizedBox(width: 3.w,),
            Text(shot.name, style: const TextStyle(color: Color(0xFF135D66), fontSize: 20),),
            const Spacer(),
            Text(shot.date, style: const TextStyle(fontSize: 16),)
          ],
        ),
      ),
    );
  }
}

