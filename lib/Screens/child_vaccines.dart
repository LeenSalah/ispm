import 'package:flutter/material.dart';
import 'package:ispm/Screens/child_history.dart';
import 'package:ispm/common/app_bar.dart';
import 'package:ispm/common/child_info.dart';
import 'package:ispm/models/shot_record.dart';
import 'package:sizer/sizer.dart';
import '../models/children_model.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ChildVaccinesPage extends StatefulWidget {
  const ChildVaccinesPage({Key? key}) : super(key: key);

  @override
  State<ChildVaccinesPage> createState() => _ChildVaccinesPageState();
}

class _ChildVaccinesPageState extends State<ChildVaccinesPage> {
  @override
  void initState() {
    super.initState();
    _fillUpcoming();
  }

  List<ShotRecord> upcoming = [];

  @override
  Widget build(BuildContext context) {
    final child = ModalRoute.of(context)!.settings.arguments as Child;
    return Scaffold(
      appBar: CustomAppBar(title: child.name),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 2.h),
              ChildInfo(child: child),
              SizedBox(height: 2.h),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Vaccination progress',
                      style:
                          TextStyle(fontSize: 20, color: Color(0xFF135D66)))),
              SizedBox(height: 0.5.h),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('click on the graph to view history',
                      style: TextStyle(color: Colors.grey))),
              SizedBox(height: 2.h),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChildHistoryPage(),
                          settings: RouteSettings(arguments: child.name)),
                    );
                  },
                  child: CircularStepProgressIndicator(
                      totalSteps: 100,
                      currentStep: 35,
                      stepSize: 10,
                      selectedColor: const Color(0xFF135D66),
                      unselectedColor: const Color(0xFFF1F1F1),
                      padding: 0,
                      width: 50.w,
                      height: 50.w,
                      selectedStepSize: 15,
                      roundedCap: (_, __) => true)),
              SizedBox(
                height: 2.h,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Upcoming',
                      style:
                          TextStyle(fontSize: 20, color: Color(0xFF135D66)))),
              Divider(
                  thickness: 1,
                  endIndent: 70.w,
                  color: const Color(0xFF135D66)),
              SizedBox(height: 1.h),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTile(
                    title: Text(upcoming[index].name),
                    trailing: Text(upcoming[index].date),
                    tileColor: index % 2 == 0
                        ? const Color(0xFF135D66)
                        : Colors.transparent,
                    textColor: index % 2 == 0 ? Colors.white : Colors.black),
                itemCount: upcoming.length,
              )
            ],
          ),
        ),
      ),
    );
  }

  void _fillUpcoming() {
    upcoming.add(ShotRecord(name: 'Pneumococcal', date: '23/7/2024'));
    upcoming.add(ShotRecord(name: 'influenza', date: '23/7/2024'));
    upcoming.add(ShotRecord(name: 'Polio', date: '23/7/2024'));
    upcoming.add(ShotRecord(name: 'Rotavirus', date: '23/7/2024'));
    upcoming.add(ShotRecord(name: 'Hib', date: '23/7/2024'));
    upcoming.add(ShotRecord(name: 'DTaP', date: '23/7/2024'));
  }
}
