import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/common/model/model.dart';
import 'package:flutter_boilerplate/common/widget/widget.dart';
import 'package:intl/intl.dart';

class ViolationCard extends StatelessWidget {
  ViolationCard({super.key, required this.violation, this.onTap});

  final Violation violation;
  final VoidCallback? onTap;
  final formatCurrency = NumberFormat('#,##0', 'en_US');

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            PaddingConstants.padding3U,
            PaddingConstants.padding3U,
            PaddingConstants.padding3U,
            PaddingConstants.padding2U,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 70,
                    height: 60,
                    // child: Image.asset(
                    //   'assets/images/traffic_light.png',
                    //   fit: BoxFit.contain,
                    // ),
                    child: violation.images.isNotEmpty
                        ? CachedNetworkImage(
                            imageUrl: violation.images.first,
                            fit: BoxFit.cover,
                          )
                        : Image.asset(
                            'assets/images/traffic_light.png',
                            fit: BoxFit.contain,
                          ),
                  ),
                  const SizedBox(
                    width: SizeConstants.size3U,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          violation.title,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        const SizedBox(
                          height: SizeConstants.size1U,
                        ),
                        Text(
                          'Phạt tiền từ ${formatCurrency.format(violation.minPenalty)} đồng đến ${formatCurrency.format(violation.maxPenalty)} đồng.',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: SizeConstants.size1U,
              ),
              Row(
                children: [
                  ...violation.affectedVehicle
                      .toList()
                      .map((e) => TagWidget(tagName: e)),
                  const Spacer(),
                  Text(
                    violation.toPenaltyString(),
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  const SizedBox(
                    width: SizeConstants.size1U5,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
