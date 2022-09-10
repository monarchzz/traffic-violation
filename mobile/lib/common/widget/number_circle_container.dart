import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';

class NumberCircleContainer extends StatelessWidget {
  const NumberCircleContainer({
    super.key,
    this.size = 5,
    required this.num,
    this.style,
    this.margin,
    this.decoration,
  });
  final double size;
  final String num;
  final TextStyle? style;
  final EdgeInsetsGeometry? margin;
  final Decoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: decoration ??
          const BoxDecoration(
            color: Palette.cerulean,
            shape: BoxShape.circle,
          ),
      padding: EdgeInsets.all(size),
      child: Text(
        num,
        style: style ??
            const TextStyle(
              fontWeight: FontWeight.w600,
              color: Palette.white,
            ),
      ),
    );
  }
}
