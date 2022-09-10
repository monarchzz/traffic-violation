import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';

class FilterItem extends StatelessWidget {
  const FilterItem({
    super.key,
    required this.title,
    required this.isChecked,
    required this.onTap,
  });

  final String title;
  final bool isChecked;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 35,
        decoration: BoxDecoration(
          color: isChecked ? Palette.white : Palette.gainsboro,
          border: Border.all(
            color: isChecked ? Palette.brand : Palette.gainsboro,
            width: 1.3,
          ),
        ),
        child: Stack(
          children: [
            SizedBox.expand(
              child: Column(
                children: [
                  const Spacer(),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Palette.jetBlack,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                ],
              ),
            ),
            if (isChecked)
              Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  children: const [
                    Spacer(),
                    Icon(
                      Icons.check,
                      size: 16,
                      color: Palette.brand,
                    ),
                  ],
                ),
              )
            else
              const SizedBox(),
          ],
        ),
      ),
    );
  }
}
