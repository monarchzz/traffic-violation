import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/common/util/time_ago.dart';
import 'package:flutter_boilerplate/module/profile/widget/cached_network_circle_avatar.dart';
import 'package:flutter_boilerplate/repository/comment_repository/model/comment_item_model.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({super.key, required this.comment});

  final CommentItemModel comment;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: PaddingConstants.padding2U),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CachedNetworkCircleAvatar(
                hasCamera: false,
                size: 30,
                imageUrl: comment.user.avatar,
              ),
              const SizedBox(
                width: SizeConstants.size2U,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    comment.user.name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Palette.jetBlack,
                    ),
                  ),
                  const SizedBox(
                    height: SizeConstants.size1U,
                  ),
                  Text(
                    comment.createdAt.toTimeAgo(),
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Palette.jetBlack,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: SizeConstants.size2U,
          ),
          Text(
            comment.text,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Palette.jetBlack,
            ),
          )
        ],
      ),
    );
  }
}
