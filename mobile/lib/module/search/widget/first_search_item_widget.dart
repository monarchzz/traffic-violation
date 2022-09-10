import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';

class FirstSearchItemWidget extends StatelessWidget {
  const FirstSearchItemWidget(
      {super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 2),
      width: double.infinity,
      height: SizeConstants.size4U5,
      child: GestureDetector(
        onTap: onTap,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 0.1,
                blurRadius: 0.1,
                offset: Offset(0, 0.5),
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(left: SizeConstants.size4U),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Palette.jetBlack,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
