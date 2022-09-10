// ignore_for_file: prefer_final_locals

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/common/model/model.dart';
import 'package:flutter_boilerplate/module/search/bloc/search_bloc.dart';
import 'package:flutter_boilerplate/module/search/model/model.dart';
import 'package:flutter_boilerplate/module/search/widget/filter_item_widget.dart';
import 'package:intl/intl.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key, required this.filters});

  final List<SearchFilter> filters;

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  List<SearchFilter> filters = List.empty();

  @override
  void initState() {
    filters = List.from(widget.filters);

    super.initState();
  }

  void _onSelectVehicle(Vehicle vehicle) {
    final bothIndex = filters.indexWhere(
      (element) =>
          element.filterType == FilterType.vehicle &&
          element.affectedVehicle != null &&
          element.affectedVehicle == Vehicle.both,
    );

    if (bothIndex == -1) {
      final vehicleIndex = filters.indexWhere(
        (element) =>
            element.filterType == FilterType.vehicle &&
            element.affectedVehicle != null &&
            element.affectedVehicle == vehicle,
      );

      if (vehicleIndex != -1) {
        filters.removeAt(vehicleIndex);
      } else {
        filters.add(
          SearchFilter(
            text: vehicle.toList()[0],
            filterType: FilterType.vehicle,
            affectedVehicle: vehicle,
          ),
        );
      }

      if (filters
              .where((element) => element.filterType == FilterType.vehicle)
              .length ==
          2) {
        filters
          ..removeWhere((element) => element.filterType == FilterType.vehicle)
          ..add(
            SearchFilter(
              text: '',
              filterType: FilterType.vehicle,
              affectedVehicle: Vehicle.both,
            ),
          );
      }
    } else {
      final newVehicle = vehicle == Vehicle.car ? Vehicle.bike : Vehicle.car;

      filters
        ..removeAt(bothIndex)
        ..add(
          SearchFilter(
            text: newVehicle.toList()[0],
            filterType: FilterType.vehicle,
            affectedVehicle: newVehicle,
          ),
        );
    }

    setState(() {
      filters = [...filters];
    });
  }

  SearchFilter _getPenaltyFilter() {
    var index = filters.indexWhere(
      (element) => element.filterType == FilterType.penalty,
    );

    if (index == -1) {
      filters.add(
        SearchFilter(
          text: 'Mọi mức',
          filterType: FilterType.penalty,
          minPenalty: 0,
          maxPenalty: 100000000,
          isAllPenalty: true,
        ),
      );
    }
    return filters.firstWhere(
      (element) => element.filterType == FilterType.penalty,
    );
  }

  void _onChangePenalty(int value, bool isMin) {
    final filter = _getPenaltyFilter();
    if (isMin) {
      var newFilter = filter.copyWith(
        minPenalty: value,
        text: '${value.convertNum()} - ${filter.maxPenalty!.convertNum()}',
      );
      filters
        ..remove(filter)
        ..add(newFilter);
    } else {
      final newFilter = filter.copyWith(
        maxPenalty: value,
        text: '${filter.minPenalty!.convertNum()} - ${value.convertNum()}',
      );
      filters
        ..remove(filter)
        ..add(newFilter);
    }

    setState(() {
      filters = [...filters];
    });
  }

  void _onSelectAllPenalty() {
    final filter = _getPenaltyFilter();
    final newFilter = filter.copyWith(isAllPenalty: !filter.isAllPenalty!);
    filters
      ..remove(filter)
      ..add(newFilter);

    setState(() {
      filters = [...filters];
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 360 + MediaQuery.of(context).viewInsets.bottom,
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: SizeConstants.size2U5),
                decoration: const BoxDecoration(
                  color: Palette.gainsboro,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                height: SizeConstants.size1U5,
                width: 3 * SizeConstants.size4U5,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: SizeConstants.size3U5),
                child: Row(
                  children: [
                    const Text(
                      'BỘ LỌC',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Palette.dimGray,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          filters.clear();
                        });
                      },
                      child: const Text(
                        'Đặt lại',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Palette.cerulean,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.fromLTRB(
                  PaddingConstants.padding3U5,
                  PaddingConstants.padding1U5,
                  PaddingConstants.padding3U,
                  0,
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Nhóm',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Palette.jetBlack,
                      ),
                    ),
                    const SizedBox(
                      height: SizeConstants.size3U,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: SizeConstants.size1U,
                        ),
                        FilterItem(
                          title: "Xe máy",
                          isChecked: filters.any(
                            (f) =>
                                f.filterType == FilterType.vehicle &&
                                (f.affectedVehicle == Vehicle.bike ||
                                    f.affectedVehicle == Vehicle.both),
                          ),
                          onTap: () {
                            _onSelectVehicle(Vehicle.bike);
                          },
                        ),
                        const SizedBox(
                          width: SizeConstants.size3U,
                        ),
                        FilterItem(
                          title: "Ô tô",
                          isChecked: filters.any(
                            (f) =>
                                f.filterType == FilterType.vehicle &&
                                (f.affectedVehicle == Vehicle.car ||
                                    f.affectedVehicle == Vehicle.both),
                          ),
                          onTap: () {
                            _onSelectVehicle(Vehicle.car);
                          },
                        )
                      ],
                    ),
                    const SizedBox(
                      height: SizeConstants.size2U,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: SizeConstants.size2U,
                    ),
                    const Text(
                      'Mức phạt',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Palette.jetBlack,
                      ),
                    ),
                    const SizedBox(
                      height: SizeConstants.size3U,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: TextFormField(
                            enabled: !_getPenaltyFilter().isAllPenalty!,
                            keyboardType: TextInputType.number,
                            initialValue:
                                _getPenaltyFilter().minPenalty!.toString(),
                            decoration: const InputDecoration(
                              hintText: '0',
                              labelText: 'Từ',
                              labelStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Palette.jetBlack,
                              ),
                            ),
                            onChanged: (value) {
                              final intValue = int.tryParse(value);
                              if (intValue != null) {
                                _onChangePenalty(int.parse(value), true);
                              }
                            },
                          ),
                        ),
                        const SizedBox(
                          width: SizeConstants.size1U,
                        ),
                        Expanded(
                          child: TextFormField(
                            enabled: !_getPenaltyFilter().isAllPenalty!,
                            keyboardType: TextInputType.number,
                            initialValue:
                                _getPenaltyFilter().maxPenalty!.toString(),
                            decoration: const InputDecoration(
                              hintText: '1000,000',
                              labelText: 'Đến',
                              labelStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Palette.jetBlack,
                              ),
                            ),
                            onChanged: (value) {
                              final intValue = int.tryParse(value);
                              if (intValue != null) {
                                _onChangePenalty(int.parse(value), false);
                              }
                            },
                          ),
                        ),
                        const SizedBox(
                          width: SizeConstants.size1U,
                        ),
                        Expanded(
                          child: FilterItem(
                            title: "Mọi mức",
                            isChecked: _getPenaltyFilter().isAllPenalty!,
                            onTap: _onSelectAllPenalty,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: SizeConstants.size4U,
              ),
              ElevatedButton(
                child: const Text('Áp dụng'),
                onPressed: () {
                  context.read<SearchBloc>().add(
                        SearchEvent.filter(filters: filters),
                      );
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: SizeConstants.size3U,
              )
            ],
          ),
        ),
      ),
    );
  }
}
