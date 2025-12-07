import 'package:flutter/material.dart';

class SliderBlock extends StatelessWidget {
  const SliderBlock({super.key, required this.height, required this.onChanged});

  final int height;
  final Function(double value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: height.toDouble(),
      min: 0,
      max: 250,
      onChanged: onChanged,
      activeColor: Color(0xffE83D67),
      inactiveColor: Colors.white,
    );
  }
}
