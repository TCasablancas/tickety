import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TicketViewController extends StatelessWidget {

  final String title;

  const TicketViewController({
    Key? key,
    required this.title
  }) : super(key: key);


  
//   const TicketViewController({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(home: TicketPage());
//   }
// }

// class TicketPage extends StatefulWidget {
//   const TicketPage({super.key});

//   @override
//   State<TicketPage> createState() => TicketPageState();
// }

// class TicketPageState extends State<TicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Container(
          margin: const EdgeInsets.only(left: 0), 
          child: Text(
            title,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 18, 
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 0, 0, 0)),
          )
        ),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 247, 250, 255),
        leading: IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.chevronLeft,
            size: 24,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          onPressed: () => {
            Navigator.pop(context)
          },
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: const [
            
          ],
        ),
      )
    );
  }
}