import 'package:flutter/material.dart';

class CustomDetailesWidget extends StatelessWidget {
  const CustomDetailesWidget(
      {super.key,
      required this.weight,
      required this.type,
      required this.icon});
  final String weight;
  final String type;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          weight,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        const Spacer(),
        Text(
          type,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Icon(icon)
      ],
    );
  }
}
