import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/app/route.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/common/di/di.dart';
import 'package:flutter_boilerplate/common/model/model.dart';
import 'package:flutter_boilerplate/module/law/bloc/law_bloc.dart';
import 'package:flutter_boilerplate/module/law/widget/comment_textfield_widget.dart';
import 'package:flutter_boilerplate/module/law/widget/vehicle_type_item_widget.dart';
import 'package:flutter_boilerplate/module/law/widget/widget.dart';
import 'package:flutter_boilerplate/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter_boilerplate/repository/comment_repository/comment_repository.dart';
import 'package:flutter_boilerplate/repository/violation_repository/violation_repository.dart';

class LawPage extends StatelessWidget {
  const LawPage({super.key});

  @override
  Widget build(BuildContext context) {
    final violationId = ModalRoute.of(context)!.settings.arguments as String?;

    return BlocProvider(
      create: (_) => LawBloc(
          violationRepository: getIt.get<ViolationRepository>(),
          commentRepository: getIt.get<CommentRepository>(),
          authenticationRepository: getIt.get<AuthenticationRepository>())
        ..add(LawEvent.started(violationId: violationId)),
      child: const LawView(),
    );
  }
}

class LawView extends StatelessWidget {
  const LawView({super.key});

  @override
  Widget build(BuildContext context) {
    final authentication = getIt.get<AuthenticationRepository>();

    return BlocBuilder<LawBloc, LawState>(
      builder: (context, blocState) {
        final state = blocState.map(
          initial: (_) => null,
          success: (value) => value,
          failure: (_) => null,
        );

        return Scaffold(
          backgroundColor: Palette.white,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(PaddingConstants.padding3U),
                      child: LawAppBar(
                        onBackPressed: () {
                          Navigator.pop(context);
                        },
                        onSavePressed: () {
                          context.read<LawBloc>().add(
                                const LawEvent.saveViolation(),
                              );
                        },
                        onHomePressed: () {
                          Navigator.popUntil(
                              context, ModalRoute.withName(RouteName.home));
                        },
                        onReportPressed: authentication.hasToken == true
                            ? () {
                                Navigator.pushNamed(
                                  context,
                                  RouteName.report,
                                  arguments: state!.law.id,
                                );
                              }
                            : null,
                        isSaved: state?.isSaved,
                      ),
                    ),
                    if (state?.law == null)
                      const Center(child: CircularProgressIndicator())
                    else
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: PaddingConstants.padding1U,
                              left: PaddingConstants.padding4U,
                              right: PaddingConstants.padding4U,
                              bottom: PaddingConstants.padding3U,
                            ),
                            child: Text(
                              state!.law.title,
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Palette.jetBlack,
                              ),
                            ),
                          ),
                          const LawDivider(),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                              PaddingConstants.padding4U,
                              PaddingConstants.padding3U5,
                              PaddingConstants.padding4U,
                              PaddingConstants.padding3U5,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Tag(
                                      title: 'HÌNH PHẠT',
                                      child: Text(
                                        '${state.law.minPenalty.convertNum()} ' +
                                            '- ${state.law.maxPenalty.convertNum()} VNĐ',
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Palette.jetBlack,
                                        ),
                                      ),
                                    ),
                                    Tag(
                                      title: 'PHƯƠNG TIỆN',
                                      child: Row(
                                        children: [
                                          if (state.law.affectedVehicle ==
                                                  Vehicle.both ||
                                              state.law.affectedVehicle ==
                                                  Vehicle.bike)
                                            const VehicleTypeItem(
                                              name: 'Xe máy',
                                            ),
                                          if (state.law.affectedVehicle ==
                                                  Vehicle.both ||
                                              state.law.affectedVehicle ==
                                                  Vehicle.car)
                                            const VehicleTypeItem(
                                              name: 'Xe ô tô',
                                            ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          if (state.law.images.isNotEmpty) ...[
                            const LawDivider(),
                            Container(
                              padding: const EdgeInsets.fromLTRB(
                                PaddingConstants.padding4U,
                                PaddingConstants.padding3U5,
                                PaddingConstants.padding4U,
                                PaddingConstants.padding3U,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'HÌNH ẢNH MINH HOẠ',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Palette.jetBlack,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: SizeConstants.size3U,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        for (var i = 0;
                                            i < state.law.images.length;
                                            i++)
                                          Container(
                                            margin: const EdgeInsets.symmetric(
                                              vertical: SizeConstants.size1U,
                                              horizontal: SizeConstants.size1U,
                                            ),
                                            height: 100,
                                            padding: const EdgeInsets.all(1),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Palette.jetBlack,
                                                width: 0.5,
                                              ),
                                            ),
                                            child: CachedNetworkImage(
                                              imageUrl: state.law.images[i],
                                              fit: BoxFit.cover,
                                            ),
                                          )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                          const LawDivider(),
                          for (var i = 0;
                              i < state.law.sections.length;
                              i++) ...[
                            SectionWidget(
                              section: state.law.sections[i],
                              onTap: () => {
                                if (state.law.sections[i].reference != null)
                                  Navigator.pushNamed(
                                    context,
                                    RouteName.document,
                                    arguments: state.law.sections[i].reference,
                                  )
                              },
                            ),
                            if (i != state.law.sections.length - 1)
                              const LawDivider(),
                          ],
                          if (getIt
                              .get<AuthenticationRepository>()
                              .hasToken) ...[
                            const LawDivider(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                PaddingConstants.padding4U,
                                PaddingConstants.padding3U5,
                                PaddingConstants.padding4U,
                                PaddingConstants.padding3U5,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'BÌNH LUẬN',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Palette.jetBlack,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: SizeConstants.size2U,
                                  ),

                                  CommentTextField(
                                    onSubmit: (text) {
                                      context.read<LawBloc>().add(
                                            LawEvent.comment(
                                              text: text,
                                              violationId: state.law.id,
                                            ),
                                          );
                                    },
                                  ),
                                  // const SizedBox(
                                  //   height: SizeConstants.size2U,
                                  // ),

                                  for (var item in state.comments) ...[
                                    const Divider(),
                                    CommentWidget(
                                      comment: item,
                                    ),
                                  ],

                                  if (state.hasNextPage)
                                    Align(
                                      child: OutlinedButton(
                                          onPressed: () {
                                            context.read<LawBloc>().add(
                                                  const LawEvent.nextPage(),
                                                );
                                          },
                                          child:
                                              const Text('Xem thêm bình luận')),
                                    ),
                                ],
                              ),
                            ),
                          ]
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
