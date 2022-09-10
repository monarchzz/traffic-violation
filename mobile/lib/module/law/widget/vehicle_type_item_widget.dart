import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';

class VehicleTypeItem extends StatelessWidget {
  const VehicleTypeItem({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: PaddingConstants.padding2U,
      ),
      padding: const EdgeInsets.all(
        PaddingConstants.padding1U5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Palette.gainsboro,
      ),
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 26, 13, 13),
        ),
      ),
    );
  }
}
