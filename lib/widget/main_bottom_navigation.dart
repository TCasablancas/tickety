import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tickety/widget/colors.dart';

class MainBottomNavigation extends StatelessWidget {
  int index;
  dynamic onTapItem;
  dynamic selectedItem;

  MainBottomNavigation({
    Key? key, 
    this.index = 0,
    required this.onTapItem, 
    required this.selectedItem
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.calendarDays, size: 16),
          label: 'início',
          activeIcon: FaIcon(
            FontAwesomeIcons.calendarDays, 
            size: 18,
            color: Colors.red,
          )
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.calendarDays, size: 18),
          label: 'eventos',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.user, size: 18),
          label: 'carteira',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.user, size: 18),
          label: 'meus dados',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.user, size: 18),
          label: 'perfil',
        ),
      ],
      currentIndex: selectedItem,
      selectedItemColor: primary,
      onTap: (_) => onTapItem,
    );
  }
}
