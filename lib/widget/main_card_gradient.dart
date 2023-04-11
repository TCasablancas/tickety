import 'package:flutter/material.dart';
import 'package:tickety/widget/styles.dart';

class MainCardGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      foregroundDecoration: BoxDecoration(
        gradient: cardTitleGradient,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(8), 
          bottomRight: Radius.circular(8)
        )
      )
    );
  }
}