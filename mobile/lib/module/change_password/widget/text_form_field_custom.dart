import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';

class TextFormFieldCustom extends StatelessWidget {
  const TextFormFieldCustom({
    super.key,
    required this.obscureText,
    required this.text,
    required this.hintText,
    required this.onSuffixIconPressed,
    required this.onChanged,
  });

  final bool obscureText;
  final String text;
  final String hintText;
  final VoidCallback onSuffixIconPressed;
  final void Function(String value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: PaddingConstants.padding3U),
      child: TextFormField(
        validator: (value) {
          return null;
        },
        initialValue: text,
        onChanged: onChanged,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Palette.jetBlack,
        ),
        obscureText: obscureText,
        decoration: InputDecoration(
          // hintText: hintText,
          label: Text(
            hintText,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Palette.jetBlack,
            ),
          ),
          suffixIcon: IconButton(
            onPressed: onSuffixIconPressed,
            icon: Icon(
              obscureText ? Icons.visibility : Icons.visibility_off,
              size: SizeConstants.size3U,
            ),
          ),
        ),
      ),
    );
  }
}
