import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';

class Tag extends StatelessWidget {
  const Tag({super.key, required this.child, required this.title});

  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Palette.jetBlack,
          ),
        ),
        const SizedBox(
          height: SizeConstants.size1U,
        ),
        child
      ],
    );
  }
}
