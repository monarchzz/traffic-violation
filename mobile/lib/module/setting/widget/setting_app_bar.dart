import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';

class SettingAppBar extends StatelessWidget {
  const SettingAppBar({
    super.key,
    required this.onBackPressed,
    required this.title,
    this.onOptionPressed,
    this.optionTitle,
  });

  final VoidCallback onBackPressed;
  final VoidCallback? onOptionPressed;
  final String title;
  final String? optionTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(
        left: PaddingConstants.padding3U,
        right: PaddingConstants.padding3U,
      ),
      child: Stack(
        children: [
          Center(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Palette.jetBlack,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: onBackPressed,
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          if (optionTitle != null)
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: onOptionPressed,
                child: Text(
                  optionTitle!,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Palette.cerulean,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
