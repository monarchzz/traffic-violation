import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';

class LawDivider extends StatelessWidget {
  const LawDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      decoration: const BoxDecoration(color: Palette.gainsboro),
    );
  }
}
