import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/app/app.dart';
import 'package:flutter_boilerplate/app/route.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/common/di/di.dart';
import 'package:flutter_boilerplate/common/model/model.dart';
import 'package:flutter_boilerplate/common/widget/widget.dart';
import 'package:flutter_boilerplate/module/profile/bloc/profile_bloc.dart';
import 'package:flutter_boilerplate/module/profile/model/model.dart';
import 'package:flutter_boilerplate/module/profile/widget/widget.dart';
import 'package:flutter_boilerplate/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter_boilerplate/repository/upload/upload_repository.dart';
import 'package:flutter_boilerplate/repository/violation_repository/violation_repository.dart';
import 'package:intl/intl.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = ProfileBloc(
      uploadRepository: getIt.get<UploadRepository>(),
      authenticationRepository: getIt.get<AuthenticationRepository>(),
      violationRepository: getIt.get<ViolationRepository>(),
    );

    return BlocProvider(
      create: (_) => bloc,
      child: ProfileView(
        bloc: bloc,
      ),
    );
  }
}

class ProfileView extends StatefulWidget {
  const ProfileView({super.key, required this.bloc});

  final ProfileBloc bloc;

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> with RouteAware {
  @override
  void didPush() {
    widget.bloc.add(const ProfileEvent.started());
    super.didPush();
  }

  @override
  void didPopNext() {
    widget.bloc.add(const ProfileEvent.started());
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
    void _showDialog() {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) {
          return Dialog(
            // The background color
            elevation: 0,
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  // The loading indicator
                  CircularProgressIndicator(),
                  SizedBox(
                    height: 15,
                  ),
                  // Some text
                  Text('Loading...')
                ],
              ),
            ),
          );
        },
      );
    }

    Future<void> _onUpdateAvatarPressed() async {
      final bloc = context.read<ProfileBloc>();

      final result = await FilePicker.platform.pickFiles(
        withReadStream: true,
        withData: true,
        type: FileType.custom,
        allowedExtensions: ['jpg', 'png', 'jpeg'],
      );

      if (result != null) {
        final file = result.files.single;
        if (file.size > fileSize) {
          await showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              elevation: 0,
              backgroundColor: Colors.white,
              title: const Text('Thông báo'),
              content: const Text('Ảnh phải nhỏ hơn 10Mb'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        } else {
          _showDialog();
          bloc.add(ProfileEvent.updateAvatar(file: result.files.single));
        }
      } else {
        // User canceled the picker
      }
    }

    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        final isLoading = state.map(
          initial: (_) => false,
          loadingAvatar: (_) => true,
          unauthorized: (_) => false,
          success: (_) => false,
          failure: (_) => false,
        );

        if (isLoading) Navigator.pop(context);
      },
      builder: (context, state) {
        final profile = state.map(
          initial: (_) => null,
          loadingAvatar: (_) => null,
          unauthorized: (_) => null,
          success: (_) => _.profile,
          failure: (_) => null,
        );

        final violations = state.map(
          initial: (_) => <Violation>[],
          loadingAvatar: (_) => <Violation>[],
          unauthorized: (_) => <Violation>[],
          success: (_) => _.violations,
          failure: (_) => <Violation>[],
        );

        return Scaffold(
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(PaddingConstants.padding3U),
            child: Column(
              children: [
                if (profile != null)
                  ProfileAppBar(
                    onBackPressed: () {
                      Navigator.pop(context);
                    },
                    onSettingPressed: () {
                      Navigator.pushNamed(context, RouteName.setting);
                    },
                  )
                else
                  ProfileAppBar(
                    onBackPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                const SizedBox(
                  height: SizeConstants.size2U,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: SizeConstants.size3U,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (profile != null)
                        GestureDetector(
                          onTap: _onUpdateAvatarPressed,
                          child: CachedNetworkCircleAvatar(
                            hasCamera: true,
                            size: 60,
                            imageUrl: profile.avatar,
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: SizeConstants.size3U,
                ),
                if (profile != null)
                  ContentWrapper(
                    headerText: 'THÔNG TIN',
                    hasEditIcon: true,
                    onEditIconPressed: () {
                      Navigator.pushNamed(context, RouteName.setting);
                    },
                    content: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: PaddingConstants.padding3U,
                        vertical: PaddingConstants.padding2U5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            profile.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Palette.black,
                            ),
                          ),
                          const SizedBox(height: SizeConstants.size2U),
                          Text(
                            String.fromCharCodes(
                              Runes('\u{2709}   ${profile.email}'),
                            ),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Palette.jetBlack,
                            ),
                          ),
                          const SizedBox(height: SizeConstants.size1U),
                          Text(
                            String.fromCharCodes(
                              Runes('\u{1F4F1} ${profile.phone}'),
                            ),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Palette.jetBlack,
                            ),
                          ),
                          if (profile.gender != null) ...[
                            const SizedBox(height: SizeConstants.size1U),
                            Text(
                              String.fromCharCodes(
                                Runes(
                                    '\u{26A5}    ${profile.gender?.toName()}'),
                              ),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Palette.jetBlack,
                              ),
                            ),
                          ],
                          if (profile.birthday != null) ...[
                            const SizedBox(height: SizeConstants.size1U),
                            Text(
                              String.fromCharCodes(
                                Runes(
                                    '\u{1F382} ${DateFormat('dd/MM/yyyy').format(profile.birthday!)}'),
                              ),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Palette.jetBlack,
                              ),
                            ),
                          ]
                        ],
                      ),
                    ),
                  )
                else ...[
                  const Text(
                    'Bạn chưa đăng nhập. Đăng nhập ngay.',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Palette.jetBlack,
                    ),
                  ),
                  const SizedBox(
                    height: SizeConstants.size3U,
                  ),
                  OutlinedButton(
                    child: const Text('Đăng nhập / Đăng ký'),
                    onPressed: () {
                      Navigator.pushNamed(context, RouteName.authentication);
                    },
                  ),
                ],
                const SizedBox(
                  height: SizeConstants.size4U,
                ),
                if (profile != null)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: PaddingConstants.padding2U,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Text(
                                'ĐÃ LƯU',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Palette.jetBlack,
                                ),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, RouteName.saved);
                                },
                                child: const Text(
                                  'Xem thêm',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Palette.cerulean,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: SizeConstants.size3U,
                          ),
                          Expanded(
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
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          )),
        );
      },
    );
  }
}
