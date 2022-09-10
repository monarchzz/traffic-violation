import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/module/home/model/model.dart';

class ItemSearch extends StatelessWidget {
  const ItemSearch({
    super.key,
    required this.mostSearch,
    required this.onPressed,
  });

  final MostSearch mostSearch;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      // height: 150,
      padding: const EdgeInsets.all(PaddingConstants.padding3U),
      decoration: BoxDecoration(
        color: Palette.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            '${mostSearch.viewCount} lượt tìm kiếm',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Palette.jetBlack,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: SizeConstants.size3U,
          ),
          Text(
            mostSearch.title,
            maxLines: 4,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Palette.jetBlack,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: onPressed,
            child: const Text('Xem'),
          )
        ],
      ),
    );
  }
}
