import 'package:flutter/material.dart';
import 'package:tickety/widget/icons.dart';

import 'package:tickety/widget/colors.dart';
import 'package:tickety/widget/styles.dart';
import 'package:tickety/app/ticket/ticket_view.dart';

class MainTopBar extends StatelessWidget {
  final Widget menuButton;

  const MainTopBar({
    Key? key,
    required this.menuButton
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      elevation: 0,
      backgroundColor: mainBackground,
      automaticallyImplyLeading: false,
      title: const Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
        child: Text("tickety", textAlign: TextAlign.left, style: logoStyle)),
      actions: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
          child: IconButton(
            icon: searchIcon,
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) => const TicketViewController(title: "buscar"))),
            },
          )
        ),
      ],
    );
  }
}
