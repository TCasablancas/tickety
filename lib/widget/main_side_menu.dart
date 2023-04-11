import 'package:flutter/material.dart';
import 'package:tickety/widget/icons.dart';
import 'package:tickety/widget/main_side_menu_item.dart';

class MainSideMenu extends StatelessWidget {
  const MainSideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(children: [
      buildMenuItems(context),
      const Divider(),

    ]);
  }

  Widget buildMenuItems(BuildContext context) => Container(
    padding: const EdgeInsets.all(20),
    child: Wrap(
      runSpacing: 6,
      children: [
        SidemenuItem(icon: calendarIcon, title: "meus eventos",
          onTap: () => { },
        ),
        SidemenuItem(icon: walletIcon, title: "carteira",
          onTap: () => { },
        ),
        SidemenuItem(icon: heartIcon, title: "favoritos",
          onTap: () => { },
        ),
        SidemenuItem(icon: userIcon, title: "conta",
          onTap: () => { },
        ),
      ]),
  );
}
