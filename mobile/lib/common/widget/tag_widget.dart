import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({super.key, required this.tagName});

  final String tagName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(PaddingConstants.padding1U),
      padding: const EdgeInsets.all(PaddingConstants.padding1U),
      decoration: BoxDecoration(
        color: Palette.gainsboro,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        tagName,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
