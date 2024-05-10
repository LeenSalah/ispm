import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ispm/common/app_bar.dart';
import 'package:ispm/common/record.dart';
import 'package:ispm/models/shot_record.dart';
import 'package:sizer/sizer.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ChildHistoryPage extends StatefulWidget {
  const ChildHistoryPage({Key? key}) : super(key: key);

  @override
  State<ChildHistoryPage> createState() => _ChildHistoryPageState();
}

class _ChildHistoryPageState extends State<ChildHistoryPage> {
  @override
  void initState() {
    super.initState();
    _fillShots();
  }
  List<ShotRecord> shotsRecord = [];
  @override
  Widget build(BuildContext context) {
    final childName = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: CustomAppBar(
        title: '$childName\'s history',
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 2.h),
              CircularStepProgressIndicator(
                  totalSteps: 100,
                  currentStep: 35,
                  stepSize: 10,
                  selectedColor: const Color(0xFF135D66),
                  unselectedColor: const Color(0xFFF1F1F1),
                  padding: 0,
                  width: 50.w,
                  height: 50.w,
                  selectedStepSize: 15,
                  roundedCap: (_, __) => true),
              SizedBox(height: 2.h),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      CupertinoIcons.search,
                      color: Color(0xFF135D66),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 1),
                    fillColor: const Color(0xFFF1F1F1),
                    filled: true,
                    hintText: 'Search vaccines history',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(color: Color(0xFF135D66))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide:
                            const BorderSide(color: Color(0xFF135D66)))),
              ),
              SizedBox(height: 2.h),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'May',
                    style: TextStyle(fontSize: 20, color: Color(0xFF135D66)),
                  )),
              Divider(
                  thickness: 1, endIndent: 84.w, color: const Color(0xFF135D66)),
              SizedBox(height: 2.h),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: RecordWidget(shot: shotsRecord[index])),
                  itemCount: shotsRecord.length)
            ],
          ),
        ),
      ),
    );
  }
  void _fillShots() {
    shotsRecord.add(ShotRecord(name: 'Pneumococcal', date: '23/7/2024'));
    shotsRecord.add(ShotRecord(name: 'influenza', date: '23/7/2024'));
    shotsRecord.add(ShotRecord(name: 'Polio', date: '23/7/2024'));
    shotsRecord.add(ShotRecord(name: 'Rotavirus', date: '23/7/2024'));
    shotsRecord.add(ShotRecord(name: 'Hib', date: '23/7/2024'));
    shotsRecord.add(ShotRecord(name: 'DTaP', date: '23/7/2024'));
  }
}
