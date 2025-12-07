import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/calculate_button.dart';
import 'package:flutterapp/widgets/counter_box.dart';
import 'package:flutterapp/widgets/custom_app_bar.dart';
import 'package:flutterapp/widgets/gender_box.dart';
import 'package:flutterapp/widgets/slider_block.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool ismale=true;
  int height=150;
  int age=10;
  int weight=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                GenderBox(text: "Male", icon: Icons.male,isactive: ismale,onTap: () {
                  setState(() {
                    ismale=true;
                  });
                },),
                SizedBox(width: 10),
                GenderBox(text: "Female", icon: Icons.female,isactive: !ismale,onTap: () {
                  setState(() {
                    ismale=false;
                  });
                },),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff24263B),
              ),
              child: Column(
                spacing: 20,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff8B8C9E),
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: height.toString(),
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff),
                          ),
                        ),
                        TextSpan(
                          text: "cm",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SliderBlock(height: height,onChanged: (value) {
                    setState(() {
                      height=value.round();
                    });
                  },)
                ],
              ),
            ),

            SizedBox(height: 20),
            Row(
              children: [
                CounterBox(title: "Weight", value: weight,
                onPressed: () {
                  setState(() {
                    weight>1?weight--:weight;
                  });
                },
                plusonPressed: () {
                 setState(() {
                    weight<200?weight++:weight;
                  });
                },),
                SizedBox(width: 10),
                CounterBox(title: "Age", value: age,
                 onPressed: () {
                  setState(() {
                    age>1?age--:age;
                  });
                },
                plusonPressed: () {
                 setState(() {
                    age<100?age++:age;
                  });
                },),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(text: "Calculate",routename: '/Result',
      bmi:(weight/pow((height/100),2)),
      )
    );
  }
}
