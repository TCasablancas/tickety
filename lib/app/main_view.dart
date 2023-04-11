import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

import 'package:tickety/widget/colors.dart';
import 'package:tickety/widget/icons.dart';
import 'package:tickety/widget/main_bottom_navigation.dart';
import 'package:tickety/widget/main_carousel_slider.dart';
import 'package:tickety/widget/main_top_bar.dart';
import 'package:tickety/widget/main_side_menu.dart';

class HomeViewController extends StatelessWidget {
  const HomeViewController({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int _index = 0;
  List _items = [];

  @override
  void initState() {
    super.initState();
    readJson();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('events.json');
    final data = await json.decode(response);

    setState(() {
      _items = data["events"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackground,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: MainTopBar(
          menuButton: Builder(builder: (context) => Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
              icon: menuIcon,
              onPressed: () => { Scaffold.of(context).openDrawer() } ),
            ))
          )
        ),
      drawer: const MainSideMenu(),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: MainCarouselSlider(
                items: _items,
                mainIndex: _index, 
                numberOfItems: _items.length)
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: MainCarouselSlider(
                items: _items,
                mainIndex: _index, 
                numberOfItems: _items.length)
            ),
          ]
        )
      ),
      bottomNavigationBar: MainBottomNavigation(onTapItem: () => {}, selectedItem: _selectedIndex),
    );
  }
}
