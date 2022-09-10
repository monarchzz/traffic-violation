import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';

class CommentTextField extends StatefulWidget {
  const CommentTextField({super.key, required this.onSubmit});

  final void Function(String text) onSubmit;

  @override
  State<CommentTextField> createState() => _CommentTextFieldState();
}

class _CommentTextFieldState extends State<CommentTextField> {
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: textController,
          onSubmitted: (value) {},
          maxLines: 3,
          decoration: const InputDecoration(
            filled: true,
            hintMaxLines: 1,
            hintText: 'Bình luận của bạn',
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(color: Palette.silver),
            ),
          ),
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Palette.jetBlack,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 14),
            ),
            onPressed: () {
              FocusScope.of(context).unfocus();
              widget.onSubmit(textController.text);
              textController.text = '';
            },
            child: SizedBox(
              width: 40,
              child: Row(
                children: const [
                  Text(
                    'Gửi',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Palette.white,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.send,
                    size: SizeConstants.size2U5,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
