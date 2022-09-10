import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/app/app.dart';
import 'package:flutter_boilerplate/app/route.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/common/di/di.dart';
import 'package:flutter_boilerplate/module/home/bloc/home_bloc.dart';
import 'package:flutter_boilerplate/module/home/widget/widget.dart';
import 'package:flutter_boilerplate/module/profile/widget/widget.dart';
import 'package:flutter_boilerplate/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter_boilerplate/repository/violation_repository/violation_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = HomeBloc(
      authenticationRepository: getIt.get<AuthenticationRepository>(),
      violationRepository: getIt.get<ViolationRepository>(),
    )..add(const HomeEvent.started());

    return BlocProvider(
      create: (_) => bloc,
      child: HomeView(bloc: bloc),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.bloc});

  final HomeBloc bloc;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with RouteAware {
  @override
  void didPush() {
    widget.bloc.add(const HomeEvent.started());
    super.didPush();
  }

  @override
  void didPopNext() {
    widget.bloc.add(const HomeEvent.started());
    super.didPopNext();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Helper.routeObserver.subscribe(this, ModalRoute.of(context)!);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(PaddingConstants.padding3U),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: SizeConstants.size2U,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: PaddingConstants.padding1U),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.profile);
                      },
                      child: CachedNetworkCircleAvatar(
                        hasCamera: false,
                        size: SizeConstants.size4U5,
                        imageUrl: context.watch<HomeBloc>().state.map(
                                  initial: (_) => null,
                                  loading: (_) => null,
                                  success: (_) => _.avatar,
                                  failure: (_) => null,
                                ) ??
                            'https://zyf8i1fxrou2h83snrgcgr3a-wpengine.netdna-ssl.com/wp-content/uploads/place-holder-avatar-600x600.jpg',
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.notifications_outlined,
                      size: SizeConstants.size3U5,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: SizeConstants.size3U5,
              ),
              Container(
                padding: const EdgeInsets.all(PaddingConstants.padding3U),
                decoration: BoxDecoration(
                  color: Palette.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: SizeConstants.size2U,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            String.fromCharCodes(
                              Runes('Thông báo \u{1F514}'),
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Palette.jetBlack,
                            ),
                          ),
                          const SizedBox(
                            height: SizeConstants.size2U,
                          ),
                          const Text(
                            'Cỏ vẻ bạn đang quan tâm Điều 53 trong NĐ100/2019',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Palette.jetBlack,
                            ),
                          ),
                          const SizedBox(
                            height: SizeConstants.size2U,
                          ),
                          const Text(
                            'Thủ tục xử phạt?',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Palette.jetBlack,
                            ),
                          )
                        ],
                      ),
                    ),
                    const VerticalDivider(),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
              const SizedBox(
                height: SizeConstants.size4U,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: PaddingConstants.padding1U5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, RouteName.search);
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
                              Text(
                                'Từ khoá...',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.keyboard_voice,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 2 * SizeConstants.size4U5,
                      ),
                      Text(
                        'Được tìm kiếm nhiều',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: SizeConstants.size4U,
                      ),
                      SizedBox(
                        height: 200,
                        child: BlocBuilder<HomeBloc, HomeState>(
                          builder: (context, state) {
                            return state.when(
                              initial: () => const Center(
                                child: CircularProgressIndicator(),
                              ),
                              loading: () => const Center(
                                child: CircularProgressIndicator(),
                              ),
                              success: (mostSearch, avatar) =>
                                  ListView.separated(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: mostSearch.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return ItemSearch(
                                    mostSearch: mostSearch[index],
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        RouteName.law,
                                        // arguments: violations[index].id,
                                        arguments: mostSearch[index].id,
                                      );
                                    },
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) =>
                                        const SizedBox(
                                  width: SizeConstants.size2U,
                                ),
                              ),
                              failure: (message) => Center(
                                child: Text(message ?? 'No content'),
                              ),
                            );
                          },
                        ),
                      ),
                      // const Spacer(),
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
