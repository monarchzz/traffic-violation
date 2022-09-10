import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';

class TextItem extends StatelessWidget {
  const TextItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.hasLeftIcon,
    this.leftTitle,
  });

  final VoidCallback onTap;
  final String title;
  final bool hasLeftIcon;
  final String? leftTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(
          horizontal: PaddingConstants.padding3U,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Palette.jetBlack,
              ),
            ),
            Row(
              children: [
                if (leftTitle != null)
                  Text(
                    leftTitle!,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Palette.jetBlack,
                    ),
                  ),
                const SizedBox(width: SizeConstants.size2U),
                if (hasLeftIcon)
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: SizeConstants.size3U,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
