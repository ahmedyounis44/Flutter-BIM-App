import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget implements PreferredSizeWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Text(
          "BMI Calculator",
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
       
      backgroundColor: Color(0xFF24263B),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
