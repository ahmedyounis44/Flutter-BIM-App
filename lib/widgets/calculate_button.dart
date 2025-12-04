import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key,required this.text});

  final String text ;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: Color(0xffE83D67),
        alignment: Alignment.center,
        child: Text(
         text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
  }
}