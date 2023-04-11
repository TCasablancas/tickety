import 'package:flutter/material.dart';

class BoxButton extends StatelessWidget {
  final String title;
  final void Function() action;

  const BoxButton({
    Key? key,
    required this.title,
    required this.action
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => action(),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: double.infinity,
        height: 50,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 200, 0, 0),
          borderRadius: BorderRadius.all(Radius.circular(8))
        ),
        child: Text(
          title,
          style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    );
  }
}
