import 'package:flutter/material.dart';
import 'package:tickety/widget/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SidemenuItem extends StatelessWidget {
  final FaIcon icon;
  final String title;
  final void Function() onTap;

  const SidemenuItem({
    Key? key, 
    required this.icon, 
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: onTap, 
        child: Row(
          children: [
            IconButton(
              icon: icon,
              onPressed: onTap,
            ),
            Text(
              title,
              style: midTextBold12,
            )
          ]
        )
      ),
    );
  }
}
