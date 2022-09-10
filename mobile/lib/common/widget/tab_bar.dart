import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({
    super.key,
    required this.tabController,
    required this.tabList,
    this.border,
  });
  final TabController tabController;
  final List<Widget> tabList;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      decoration: BoxDecoration(
        color: Palette.background,
        borderRadius: BorderRadius.circular(100),
        border: border,
      ),
      child: TabBar(
        controller: tabController,
        labelPadding: const EdgeInsets.symmetric(
          horizontal: PaddingConstants.padding3U,
        ),
        padding: const EdgeInsets.all(PaddingConstants.padding1U),
        indicator: BoxDecoration(
            color: Palette.white,
            borderRadius: BorderRadius.circular(100),
            boxShadow: const [
              BoxShadow(
                color: Palette.silver,
                offset: Offset(0, 1),
              ),
            ]),
        labelStyle: Theme.of(context).textTheme.headline5,
        labelColor: Palette.black,
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.75,
          color: Palette.dimGray,
        ),
        isScrollable: true,
        tabs: tabList.map((e) => e).toList(),
      ),
    );
  }
}
