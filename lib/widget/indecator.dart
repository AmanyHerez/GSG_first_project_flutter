import 'package:flutter/material.dart';

class Indecator extends StatelessWidget {
  final bool selected;

  Indecator({required this.selected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: CircleAvatar(
        backgroundColor: selected ? Colors.amber : Colors.grey,
        radius: 5,
      ),
    );
  }
}
