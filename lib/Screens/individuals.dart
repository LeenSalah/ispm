import 'package:flutter/material.dart';
import 'package:ispm/common/app_bar.dart';
import 'package:ispm/common/record.dart';
import 'package:ispm/models/shot_record.dart';
import 'package:sizer/sizer.dart';

class IndividualsPage extends StatefulWidget {
  const IndividualsPage({Key? key}) : super(key: key);

  @override
  State<IndividualsPage> createState() => _IndividualsPageState();
}

class _IndividualsPageState extends State<IndividualsPage> {
  @override
  void initState() {
    super.initState();
    _fillShots();
  }

  List<ShotRecord> shotsRecord = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Individual'),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Align(
                alignment: Alignment.centerLeft,
                child: Text('Vaccination history',
                    style: TextStyle(fontSize: 20, color: Color(0xFF135D66)))),
            SizedBox(
              height: 3.h,
            ),
            Expanded(
                child: ListView.builder(
                    itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: RecordWidget(shot: shotsRecord[index])),
                    itemCount: shotsRecord.length))
          ],
        ),
      ),
    );
  }

  void _fillShots() {
    shotsRecord.add(ShotRecord(name: 'Pfizer', date: '7/10/2020'));
    shotsRecord.add(ShotRecord(name: 'Allergy shot', date: '15/3/2024'));
    shotsRecord.add(ShotRecord(name: 'Flu shot', date: '1/5/2024'));
    shotsRecord.add(ShotRecord(name: 'Polio', date: '12/1/2023'));
  }
}
