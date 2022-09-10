import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/app/route.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/common/di/di.dart';
import 'package:flutter_boilerplate/common/model/model.dart';
import 'package:flutter_boilerplate/common/widget/widget.dart';
import 'package:flutter_boilerplate/module/saved/bloc/saved_bloc.dart';
import 'package:flutter_boilerplate/repository/violation_repository/violation_repository.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          SavedBloc(violationRepository: getIt.get<ViolationRepository>())
            ..add(const SavedEvent.started()),
      child: const SavedView(),
    );
  }
}

class SavedView extends StatelessWidget {
  const SavedView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SavedBloc, SavedState>(
      builder: (context, state) {
        void _onSearchFieldSubmit(String value) {
          context.read<SavedBloc>().add(SavedEvent.search(value: value));
        }

        final isSuccess = state.map(
          initial: (_) => false,
          success: (_) => true,
          failure: (_) => false,
        );

        if (!isSuccess) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        final violations = state.map(
          initial: (_) => <Violation>[],
          success: (_) => _.savedViolations,
          failure: (_) => <Violation>[],
        );

        return Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    PaddingConstants.padding2U,
                    PaddingConstants.padding3U5,
                    PaddingConstants.padding3U,
                    PaddingConstants.padding2U,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                      const SizedBox(width: SizeConstants.size2U5),
                      Expanded(
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 0.5,
                                blurRadius: 0.5,
                                offset: Offset(0, 0.5),
                              ),
                            ],
                          ),
                          child: TextField(
                            // autofocus: true,
                            onSubmitted: _onSearchFieldSubmit,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.zero,
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Palette.jetBlack,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: SizeConstants.size4U,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: PaddingConstants.padding3U,
                  ),
                  child: Text(
                    '${violations.length} VI PHẠM ĐÃ LƯU',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Palette.jetBlack,
                    ),
                  ),
                ),
                const SizedBox(
                  height: SizeConstants.size3U,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: PaddingConstants.padding3U,
                    ),
                    child: ListView.separated(
                      itemCount: violations.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ViolationCard(
                          violation: violations[index],
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              RouteName.law,
                              // arguments: violations[index].id,
                              arguments: '62b871d01bad3bce16c1e749',
                            );
                          },
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(
                        width: SizeConstants.size1U,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: SizeConstants.size3U,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
