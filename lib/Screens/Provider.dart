import 'package:flutter/material.dart';
import 'package:ispm/common/app_bar.dart';
import 'package:sizer/sizer.dart';

class Provider extends StatefulWidget {
  @override
  _ProviderState createState() => _ProviderState();
}

class _ProviderState extends State<Provider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Provider',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Patient Name'),
              ),
              SizedBox(height: 3.h),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Patient Date of Birth'),
              ),
              SizedBox(height: 3.h),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Patient Gender'),
              ),
              SizedBox(height: 3.h),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Immunization Date'),
              ),
              SizedBox(height: 3.h),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Vaccine Name'),
              ),
              SizedBox(height: 3.h),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Healthcare Provider Name'),
              ),
              SizedBox(height: 5.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(5.w, 6.h),
                      backgroundColor: Color(0xff135D66)),
                  onPressed: () {},
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
