import 'package:flutter/material.dart';

class BulletDate extends StatelessWidget {
  final String day;
  final String month;

  const BulletDate({
    Key? key,
    required this.day,
    required this.month,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 50,
      padding: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      child: Center(
        child: Wrap(
          runSpacing: 4,
          children: [
            SizedBox(
              height: 26,
              width: double.maxFinite,
              child: Text(day, textAlign: TextAlign.center, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
            ),
            SizedBox(
              height: 14, 
              width: double.maxFinite,
              child: Text(month, textAlign: TextAlign.center, style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500))),
          ]),
      )
    );
  }
}
