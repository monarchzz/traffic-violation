import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';

class LawAppBar extends StatefulWidget {
  const LawAppBar({
    super.key,
    required this.onBackPressed,
    required this.onHomePressed,
    required this.onSavePressed,
    this.onReportPressed,
    bool? isSaved,
  }) : _isSaved = isSaved;

  final VoidCallback onBackPressed;
  final VoidCallback onSavePressed;
  final VoidCallback onHomePressed;
  final VoidCallback? onReportPressed;
  final bool? _isSaved;

  @override
  State<LawAppBar> createState() => _LawAppBarState();
}

class _LawAppBarState extends State<LawAppBar> {
  final CustomPopupMenuController _controller = CustomPopupMenuController();

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
            onPressed: widget.onBackPressed,
            icon: const Icon(Icons.arrow_back),
          ),
          const Spacer(),
          if (widget._isSaved != null)
            IconButton(
              onPressed: widget.onSavePressed,
              icon: widget._isSaved!
                  ? const Icon(
                      Icons.favorite,
                      color: Palette.red,
                    )
                  : const Icon(Icons.favorite_border),
            ),
          IconButton(
            onPressed: widget.onHomePressed,
            icon: const Icon(
              Icons.home_outlined,
            ),
          ),
          // IconButton(
          //   onPressed: onReportPressed,
          //   icon: const Icon(
          //     Icons.more_vert,
          //   ),
          // ),
          if (widget.onReportPressed != null)
            CustomPopupMenu(
              controller: _controller,
              menuBuilder: () => SizedBox(
                width: 150,
                child: Container(
                  padding: const EdgeInsets.all(PaddingConstants.padding2U5),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          _controller.hideMenu();
                          widget.onReportPressed!();
                        },
                        child: Row(
                          children: const [
                            Icon(Icons.report),
                            SizedBox(
                              width: SizeConstants.size2U,
                            ),
                            Text('Báo cáo')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              pressType: PressType.singleClick,
              child: const Icon(
                Icons.more_vert,
              ),
            ),
        ],
      ),
    );
  }
}
