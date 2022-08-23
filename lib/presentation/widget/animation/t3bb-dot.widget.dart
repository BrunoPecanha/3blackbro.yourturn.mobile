import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFFFFFFF)
      ),
      width: 25,
      height: 25,
    );
  }

}