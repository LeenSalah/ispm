import 'package:flutter/material.dart';
import 'package:ispm/common/age_chart.dart';
import 'package:ispm/common/app_bar.dart';
import 'package:ispm/common/month_chart.dart';
import 'package:ispm/common/pie_chart.dart';

class HealthCareOfficialPage extends StatelessWidget {
  const HealthCareOfficialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Official',),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PieChartSample1(),
            LineChartSample2(),
            LineChartSample1()
          ],
        ),
      ),
    );
  }
}
