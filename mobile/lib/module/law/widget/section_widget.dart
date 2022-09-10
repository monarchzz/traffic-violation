import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/module/law/model/model.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({super.key, required this.section, this.onTap});

  final Section section;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dataList = section.data.split('<b>');
    final bData =
        dataList.length > 1 ? dataList[1].replaceAll('</b>', '') : null;

    return Container(
      padding: const EdgeInsets.fromLTRB(
        PaddingConstants.padding4U,
        PaddingConstants.padding3U5,
        PaddingConstants.padding4U,
        PaddingConstants.padding3U5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            section.type.toName(),
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Palette.jetBlack,
            ),
          ),
          const SizedBox(
            height: SizeConstants.size2U,
          ),
          Text(
            dataList[0],
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Palette.jetBlack,
            ),
          ),
          if (bData != null)
            Text(
              '\n$bData',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Palette.jetBlack,
              ),
            ),
          if (section.reference != null)
            GestureDetector(
              onTap: onTap,
              child: Text(
                '\n${section.reference!.title}',
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Palette.cerulean,
                ),
              ),
            )
        ],
      ),
    );
  }
}
