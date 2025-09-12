import 'package:flutter/material.dart';

class CirculerContainer extends StatelessWidget {
  const CirculerContainer({
    super.key,
    this.color,
    this.size,
  });
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? 200,
      width: size ?? 200,
      decoration:
          BoxDecoration(shape: BoxShape.circle, border: Border.all(color: color ?? Colors.white, width: 5)),
    );
  }
}
