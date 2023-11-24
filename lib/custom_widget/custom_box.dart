import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  const CustomBox({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: .5),
          ),
          child: Icon(icon),
        ),
        Text(text),
      ],
    );
  }
}
