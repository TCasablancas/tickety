import 'package:flutter/material.dart';
import 'package:tickety/widget/main_event_card.dart';
import 'package:tickety/app/ticket/ticket_view.dart';

class MainCarouselSlider extends StatelessWidget {
  final List items;
  final int mainIndex;
  final int numberOfItems;
  final itemBuilder;

  const MainCarouselSlider(
      {Key? key,
      required this.items,
      required this.mainIndex,
      required this.numberOfItems,
      this.itemBuilder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainCarouselState(
      items: items,
      itemBuilder: itemBuilder,
      numberOfItems: numberOfItems,
      mainIndex: mainIndex);
  }
}

class MainCarouselState extends StatefulWidget {
  final List items;
  late int mainIndex;
  final int numberOfItems;
  final NullableIndexedWidgetBuilder? itemBuilder;

  MainCarouselState({
    Key? key,
    required this.items,
    required this.mainIndex,
    required this.numberOfItems,
    this.itemBuilder,
  }) : super(key: key);

  @override
  State<MainCarouselState> createState() => MainCarouselSliderView();
}

class MainCarouselSliderView extends State<MainCarouselState> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 280,
      child: PageView.builder(
        itemCount: widget.numberOfItems,
        controller: PageController(viewportFraction: 0.86),
        onPageChanged: (int index) => setState(() => widget.mainIndex = index),
        itemBuilder: (_, i) {
          return Transform.scale(
            scale: i == widget.mainIndex ? 1 : 0.9,
            child: MainEventCard(
              navigateTo: TicketViewController(title: widget.items[widget.mainIndex]["artist"]),
              image: widget.items[widget.mainIndex]["imag_url"],
              artist: widget.items[widget.mainIndex]["artist"],
              place: widget.items[widget.mainIndex]["place"],
              date: widget.items[widget.mainIndex]["date"]
            )
          );
        }
      )

      // PageView.builder(
      //     itemCount: widget.numberOfItems,
      //     controller: PageController(viewportFraction: 0.85),
      //     onPageChanged: (int index) =>
      //         setState(() => widget.mainIndex = index),
      //     itemBuilder: widget.itemBuilder!),
      
    );
  }
}
