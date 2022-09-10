import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/common/widget/widget.dart';

class FilterContainer extends StatefulWidget {
  const FilterContainer({
    super.key,
    required this.text,
    this.defaultActive = false,
    this.hasDropdownArrow = false,
    this.defaultNum,
    this.border,
    this.onTap,
  });

  final String text;
  final bool defaultActive;
  final bool hasDropdownArrow;
  final int? defaultNum;
  final BoxBorder? border;
  final VoidCallback? onTap;

  @override
  State<FilterContainer> createState() => FilterContainerState();
}

class FilterContainerState extends State<FilterContainer> {
  late bool isActive;
  late Color color;
  late Color backgroundColor;
  late Color borderColor;
  int? num;

  void setColor() {
    if (isActive) {
      color = Palette.brandComplementary;
      backgroundColor = Theme.of(context).primaryColor;
      borderColor = Theme.of(context).primaryColor;
    } else {
      color = Palette.dimGray;
      backgroundColor = Palette.white;
      borderColor = Palette.silver;
    }
  }

  @override
  void initState() {
    isActive = widget.defaultActive;
    num = widget.defaultNum;
    super.initState();
  }

  void setActive({required bool active}) {
    setState(() {
      isActive = active;
    });
  }

  void setNum(int? num) {
    setState(() {
      this.num = num;
    });
  }

  @override
  Widget build(BuildContext context) {
    setColor();

    return GestureDetector(
      child: Container(
        height: SizeConstants.size3U5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16,
          ),
          color: backgroundColor,
          border: widget.border ?? Border.all(color: borderColor),
        ),
        padding: EdgeInsets.only(
          left: PaddingConstants.padding2U5,
          right: widget.hasDropdownArrow
              ? PaddingConstants.padding1U
              : PaddingConstants.padding2U5,
        ),
        child: Row(
          children: [
            Text(
              widget.text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 11,
                color: color,
              ),
            ),
            ConditionRenderer.single(
              condition: num != null || num == 0,
              child: NumberCircleContainer(
                margin: const EdgeInsets.only(left: PaddingConstants.padding1U),
                num: '$num',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: backgroundColor,
                ),
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
                size: 2,
              ),
            ),
            ConditionRenderer.single(
              condition: widget.hasDropdownArrow,
              child: Icon(
                Icons.arrow_drop_down,
                size: 16,
                color: color,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
    );
  }
}
