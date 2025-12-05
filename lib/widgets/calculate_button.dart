import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key, required this.text,required this.routename});

  final String text;
  final String routename;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
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
      ),
      onTap: () {
         Navigator.pushNamed(context, routename);
      },
    );
  }
}
