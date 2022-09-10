import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';

class ContentWrapper extends StatelessWidget {
  const ContentWrapper({
    super.key,
    required this.headerText,
    required this.hasEditIcon,
    required this.content,
    this.onEditIconPressed,
  });

  final String headerText;
  final bool hasEditIcon;
  final Widget content;
  final VoidCallback? onEditIconPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsets.symmetric(horizontal: PaddingConstants.padding3U),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Palette.white,
        boxShadow: const [
          BoxShadow(
            color: Palette.gainsboro,
            spreadRadius: 0,
            blurRadius: 12,
            offset: Offset(0, 4), // changes position of shadow
          )
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: PaddingConstants.padding2U5,
              vertical: PaddingConstants.padding2U,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    headerText.toUpperCase(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.25,
                      color: Palette.black,
                    ),
                  ),
                ),
                ...hasEditIcon
                    ? [
                        const SizedBox(width: PaddingConstants.padding2U),
                        GestureDetector(
                          onTap: () {
                            onEditIconPressed!();
                          },
                          child: const Icon(
                            Icons.edit_outlined,
                            size: 18,
                            color: Palette.dimGray,
                          ),
                        )
                      ]
                    : List<Widget>.empty(),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            height: 1,
            color: Palette.gainsboro,
          ),
          content
        ],
      ),
    );
  }
}
