import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/calculate_button.dart';
import 'package:flutterapp/widgets/custom_app_bar.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Result",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
              
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                 width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff24263B),
                ),
                child: Column(
                  spacing: 50,
                  children: [
                    Text(
                      "Normal",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff21BF73),
                      ),
                    ),
                    Text(
                      "19.2",
                      style: TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "You Have a Normal Body Weight,Good Job.",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff8B8C9E),
                      ),
                    ),
                     
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(text: "Re - Calculate", routename: '/',)
    );
  }
}
