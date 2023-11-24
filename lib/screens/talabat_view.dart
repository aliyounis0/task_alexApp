import 'package:flutter/material.dart';
import 'package:task_alexapps/custom_widget/Talabat_card.dart';

class TalabatView extends StatelessWidget {
  const TalabatView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TalabatCard(),
      ],
    );
  }
}
