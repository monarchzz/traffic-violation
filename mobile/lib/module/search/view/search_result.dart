import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/app/route.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/common/widget/widget.dart';
import 'package:flutter_boilerplate/module/search/bloc/search_bloc.dart';
import 'package:flutter_boilerplate/module/search/model/search_filter.dart';
import 'package:flutter_boilerplate/module/search/widget/widget.dart';

class SearchResult extends StatelessWidget {
  SearchResult({super.key});
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        void _showModalBottomSheet() {
          showModalBottomSheet<void>(
            isScrollControlled: true,
            context: context,
            builder: (bottomSheetContext) {
              return BlocProvider.value(
                value: BlocProvider.of<SearchBloc>(context),
                child: FilterBottomSheet(
                  filters: state.map(
                    loading: (_) => <SearchFilter>[],
                    success: (value) => value.filters,
                    failure: (_) => <SearchFilter>[],
                  ),
                ),
              );
            },
          );
        }

        return Scaffold(
          body: SafeArea(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      PaddingConstants.padding2U,
                      PaddingConstants.padding3U,
                      PaddingConstants.padding3U,
                      PaddingConstants.padding2U,
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            context
                                .read<SearchBloc>()
                                .add(const SearchEvent.pop());
                          },
                          icon: const Icon(Icons.arrow_back),
                        ),
                        const SizedBox(width: SizeConstants.size1U),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              context
                                  .read<SearchBloc>()
                                  .add(const SearchEvent.pop());
                            },
                            child: Container(
                              height: SizeConstants.size5U,
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0, 0.5),
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: PaddingConstants.padding2U5,
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.search,
                                  ),
                                  const SizedBox(
                                    width: SizeConstants.size3U,
                                  ),
                                  Expanded(
                                    child: Text(
                                      state.map(
                                            loading: (value) => null,
                                            success: (value) =>
                                                value.searchText,
                                            failure: (value) => null,
                                          ) ??
                                          'Từ khoá...',
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.keyboard_voice,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(width: PaddingConstants.padding2U),
                      IconButton(
                        onPressed: _showModalBottomSheet,
                        icon: const Icon(
                          Icons.filter_list,
                          size: SizeConstants.size3U5,
                        ),
                      ),
                      const SizedBox(width: SizeConstants.size1U),
                      if (state.map(
                        loading: (value) => false,
                        success: (value) => value.filters.isEmpty,
                        failure: (value) => false,
                      ))
                        Text(
                          "Bộ lọc",
                          style: Theme.of(context).textTheme.bodyText1,
                        )
                      else
                        ...state.map(
                          loading: (value) => [],
                          success: (value) {
                            final filters =
                                List<SearchFilter>.from(value.filters)
                                  ..sort(
                                    (a, b) => a.filterType == FilterType.vehicle
                                        ? -1
                                        : 1,
                                  );

                            final filterItems = <Widget>[];
                            for (final filter in filters) {
                              if (filter.filterType == FilterType.vehicle &&
                                  filter.affectedVehicle == Vehicle.both) {
                                filterItems
                                  ..add(
                                    FilterContainer(
                                      text: 'Xe máy',
                                      defaultActive: true,
                                      // hasDropdownArrow: false,
                                      // defaultNum: 10,
                                      onTap: _showModalBottomSheet,
                                    ),
                                  )
                                  ..add(
                                    const SizedBox(width: SizeConstants.size2U),
                                  )
                                  ..add(
                                    FilterContainer(
                                      text: 'Ô tô',
                                      defaultActive: true,
                                      // hasDropdownArrow: false,
                                      // defaultNum: 10,
                                      onTap: _showModalBottomSheet,
                                    ),
                                  );
                              } else {
                                filterItems.add(
                                  FilterContainer(
                                    text: (filter.isAllPenalty != null &&
                                            filter.isAllPenalty!)
                                        ? "Mọi mức"
                                        : filter.text,
                                    defaultActive: true,
                                    // hasDropdownArrow: false,
                                    // defaultNum: 10,
                                    onTap: _showModalBottomSheet,
                                  ),
                                );
                              }

                              filterItems.add(
                                const SizedBox(width: SizeConstants.size2U),
                              );
                            }
                            return filterItems;
                          },
                          failure: (value) => [],
                        ),
                    ],
                  ),
                  const SizedBox(height: SizeConstants.size3U5),
                  state.map(
                    loading: (_) => Container(),
                    success: (value) => value.searchLoading == null ||
                            value.searchLoading == false
                        ? Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: PaddingConstants.padding3U,
                            ),
                            child: Text(
                              'Có ${value.total} kết quả được tìm thấy',
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Palette.jetBlack,
                              ),
                            ),
                          )
                        : Container(),
                    failure: (_) => Container(),
                  ),
                  state.map(
                    loading: (_) => Container(),
                    success: (value) {
                      if (value.searchLoading != null &&
                          value.searchLoading == true) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        final violations = value.violations;
                        return Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(
                              PaddingConstants.padding3U,
                            ),
                            child: ListView.separated(
                              controller: _scrollController
                                ..addListener(() {
                                  if (_scrollController.offset ==
                                      _scrollController
                                          .position.maxScrollExtent) {
                                    context
                                        .read<SearchBloc>()
                                        .add(const SearchEvent.searchMore());
                                  }
                                }),
                              itemCount: violations.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ViolationCard(
                                  violation: violations[index],
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context,
                                      RouteName.law,
                                      // arguments: violations[index].id,
                                      arguments: violations[index].id,
                                    );
                                  },
                                );
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const SizedBox(
                                width: SizeConstants.size1U,
                              ),
                            ),
                          ),
                        );
                      }
                    },
                    failure: (_) => Container(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
