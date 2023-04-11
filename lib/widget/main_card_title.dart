import 'package:flutter/material.dart';
import 'package:tickety/widget/styles.dart';
import 'package:tickety/widget/icons.dart';
import 'package:tickety/widget/re_circle_arrow.dart';

class MainCardTitle extends StatelessWidget {
  final String artist;
  final String place;

  const MainCardTitle({Key? key, required this.artist, required this.place})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 34),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                const Spacer(),
                Text(
                  artist, 
                  style: mainCardTitleStyle, 
                  textAlign: TextAlign.left,
                  maxLines: 2),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 4, 2), 
                      child: locationDot),
                    Text(place, style: clearTextMedium10)
                  ]),
              ]),
            const Spacer(),
            Container(
              alignment: const Alignment(1, 0.96),
              child: CircleArrow(),
            )
          ])
      ),
    );
  }
}
