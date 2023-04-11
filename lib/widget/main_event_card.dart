import 'package:flutter/material.dart';
import 'package:tickety/widget/bullet_date.dart';
import 'package:tickety/widget/colors.dart';
import 'package:tickety/widget/main_card_gradient.dart';
import 'package:tickety/widget/styles.dart';
import 'package:tickety/widget/main_card_title.dart';

class MainEventCard extends StatelessWidget {
  final dynamic navigateTo;
  final String image;

  final String artist;
  final String place;
  final String date;

  const MainEventCard(
      {Key? key,
      required this.navigateTo,
      required this.image,
      this.artist = "",
      this.place = "",
      this.date = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return navigateTo;
        })),
      },
      child: Stack(
        children: [
          Container(
            margin: spacingRight,
            height: 280,
            width: double.infinity,
            decoration: BoxDecoration(
              color: white,
              borderRadius: borderAll8,
              boxShadow: const [boxShadow],
              image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
            )
          ),
          MainCardGradient(),
          MainCardTitle(artist: artist, place: place),
          Container(
            alignment: const AlignmentDirectional(-0.85, -0.85),
            child: BulletDate(day: "12", month: "Dezembro"),
          ),
        ]
      )
    );
  }
}
