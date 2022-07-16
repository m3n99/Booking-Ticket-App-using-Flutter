import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  final bool? isColor;
  const CircularContainer({Key? key, required this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
              width: 2.5,
              color: isColor == null ? Colors.white : const Color(0xFF8ACCF7))),
    );
  }
}
