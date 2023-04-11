import 'package:flutter/material.dart';
import 'icons.dart';

class CircleArrow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(18)),
        color: Colors.white,
      ),
      child: IconButton(
        onPressed: () => {}, 
        icon: arrowRightCard
      ),
    );
  }
}