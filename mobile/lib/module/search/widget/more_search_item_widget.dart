import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';

class MoreSearchItemWidget extends StatelessWidget {
  const MoreSearchItemWidget({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 2),
      width: double.infinity,
      height: SizeConstants.size4U,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 0.1,
            blurRadius: 0.1,
            offset: Offset(0, 0.5),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Palette.cerulean,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
    );
  }
}
