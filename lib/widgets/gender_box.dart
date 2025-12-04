import 'package:flutter/material.dart';

class GenderBox extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isactive ;
  final void Function()? onTap;

  const GenderBox({super.key, required this.text, required this.icon,this.isactive=false,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child:  Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color:isactive?Color(0xffE83D67): Color(0xff24263B),
        ),
        child: Column(
          children: [
            Icon(icon, size: 100),
            Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,color: Color(0xff8B8C9E)),
            ),
          ],
        ),
      ),
    ));
  }
}
