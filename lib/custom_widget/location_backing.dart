import 'package:flutter/material.dart';

class LocationBacking extends StatelessWidget {
  const LocationBacking({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          children: [
            Text(
              "موقع التنزيل",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("1097 Daju Ridge"),
          ],
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          Icons.location_on_rounded,
        )
      ],
    );
  }
}
