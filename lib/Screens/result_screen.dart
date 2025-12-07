import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/calculate_button.dart';
import 'package:flutterapp/widgets/custom_app_bar.dart';

class ResultScreen extends StatelessWidget {
   
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    double bmi = args['bmi'];
    return Scaffold(
      appBar: Customappbar(),
      body: Padding(
        padding: EdgeInsets.all(16),
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
                      getStatusval(bmi),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff21BF73),
                      ),
                    ),
                    Text(
                     bmi.toStringAsFixed(1),
                      style: TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      getStatusDescription(bmi),
                       textAlign: TextAlign.center,
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

 String getStatusval(double bmi) {
  return switch (bmi) {
    < 18.5 => 'Underweight',
    >= 18.5 && < 25.0 => 'Normal weight',
    >= 25.0 && < 30.0 => 'Overweight',
    _ => 'Obese', // Default case (>= 30.0)
  };
}

String getStatusDescription(double bmi) {
  return switch (bmi) {
    < 18.5 => 'You have a lower than normal body weight. Consider consulting a nutritionist.',
    >= 18.5 && < 25.0 => 'You have a healthy body weight. Good job maintaining your fitness!',
    >= 25.0 && < 30.0 => 'You are slightly overweight. Regular exercise and a balanced diet may help.',
    _ => 'Your body weight is in the obese range. Please consult a healthcare provider.',
  };
}
}
