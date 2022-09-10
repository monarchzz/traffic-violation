import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/module/search/bloc/search_bloc.dart';
import 'package:flutter_boilerplate/module/search/widget/widget.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SearchBloc>().state;

    void _navigate(String value) {
      context.read<SearchBloc>().add(SearchEvent.search(value: value));
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(PaddingConstants.padding3U),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DecoratedBox(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0.5,
                      blurRadius: 0.5,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: TextField(
                  autofocus: true,
                  onSubmitted: _navigate,
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Palette.jetBlack,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        print('on search by voice taped');
                      },
                      icon: const Icon(
                        Icons.keyboard_voice,
                        color: Palette.jetBlack,
                      ),
                    ),
                    hintMaxLines: 1,
                    hintText: 'Từ khoá...',
                    fillColor: Colors.white,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              const SizedBox(height: SizeConstants.sizeU5),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...state.map(
                        loading: (_) => [const CircularProgressIndicator()],
                        success: (successState) {
                          if (successState.isViewAllSearchedItems) {
                            return [
                              ...successState.searchedItems.map(
                                (item) => SearchItemWidget(
                                  title: item,
                                  onTap: () {
                                    _navigate(item);
                                  },
                                ),
                              ),
                              MoreSearchItemWidget(
                                title: 'Hiển thị it hơn',
                                onTap: () {
                                  context.read<SearchBloc>().add(
                                        const SearchEvent
                                            .hideSearchedItemButtonPressed(),
                                      );
                                },
                              ),
                            ];
                          } else {
                            return [
                              ...successState.searchedItems.map(
                                (item) => SearchItemWidget(
                                  title: item,
                                  onTap: () {
                                    _navigate(item);
                                  },
                                ),
                              ),
                              if (successState.searchedItems.isNotEmpty)
                                MoreSearchItemWidget(
                                  title: 'Hiển thị nhiều hơn',
                                  onTap: () {
                                    context.read<SearchBloc>().add(
                                          const SearchEvent
                                              .searchedItemButtonPressed(),
                                        );
                                  },
                                ),
                              const SizedBox(
                                height: SizeConstants.size3U,
                              ),
                              Text(
                                "ĐƯỢC TÌM KIẾM NHIỀU",
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              const SizedBox(
                                height: SizeConstants.size3U,
                              ),
                              for (var i = 0;
                                  i <
                                      successState
                                          .frequentlySearchedItems.length;
                                  i++)
                                i == 0
                                    ? FirstSearchItemWidget(
                                        title: successState
                                            .frequentlySearchedItems[i],
                                        onTap: () {
                                          _navigate(
                                            successState
                                                .frequentlySearchedItems[i],
                                          );
                                        },
                                      )
                                    : i ==
                                            successState.frequentlySearchedItems
                                                    .length -
                                                1
                                        ? LastSearchItemWidget(
                                            title: successState
                                                .frequentlySearchedItems[i],
                                            onTap: () {
                                              _navigate(
                                                successState
                                                    .frequentlySearchedItems[i],
                                              );
                                            },
                                          )
                                        : SearchItemWidget(
                                            title: successState
                                                .frequentlySearchedItems[i],
                                            onTap: () {
                                              _navigate(
                                                successState
                                                    .frequentlySearchedItems[i],
                                              );
                                            },
                                          )
                            ];
                          }
                        },
                        failure: (failure) =>
                            [Text(failure.message ?? 'Error')],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
