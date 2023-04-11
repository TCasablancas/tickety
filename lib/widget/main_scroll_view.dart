import 'package:flutter/material.dart';

import 'package:tickety/app/ticket/ticket_view.dart';
import 'package:tickety/widget/main_event_card.dart';


class MainScrollView extends StatefulWidget {
  List<Widget> items;
  int carouselIndex;
  void Function() setState;

  MainScrollView(
    Key? key,
    this.items,
    this.carouselIndex, 
    this.setState
  ) : super(key: key);

  @override
  MainScrollViewState createState() => MainScrollViewState();
}

class MainScrollViewState extends State<MainScrollView> {
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      children: <Widget>[
        Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              width: double.maxFinite,
              height: 280,
              child: PageView.builder(
                itemCount: widget.items.length,
                controller: PageController(viewportFraction: 0.86),
                onPageChanged: (int index) => setState(() => widget.carouselIndex = index),
                itemBuilder: (_, i) {
                  return Transform.scale(
                    scale: i ==  widget.carouselIndex ? 1 : 0.9,
                    child: const MainEventCard(
                      navigateTo: TicketViewController(title: ""),
                        // image: widget.items[widget.carouselIndex]["imag_url"],
                        // artist: widget.items[widget.carouselIndex]["artist"],
                        // place: widget.items[widget.carouselIndex]["place"],
                        // date: widget.items[widget.carouselIndex]["date"]
                        image: "",
                    )
                  );
                },
              ),
            )),
      ],
    );
  }
}
