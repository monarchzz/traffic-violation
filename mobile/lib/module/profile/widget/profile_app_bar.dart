import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    super.key,
    required this.onBackPressed,
    this.onSettingPressed,
  });

  final VoidCallback onBackPressed;
  final VoidCallback? onSettingPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(
        left: PaddingConstants.paddingU5,
        right: PaddingConstants.padding1U5,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: onBackPressed,
            icon: const Icon(Icons.arrow_back),
          ),
          const Spacer(),
          if (onSettingPressed != null)
            IconButton(
              onPressed: onSettingPressed,
              icon: const Icon(
                Icons.settings_outlined,
              ),
            ),
        ],
      ),
    );
  }
}
