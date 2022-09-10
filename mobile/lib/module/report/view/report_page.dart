import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/app/route.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/common/di/di.dart';
import 'package:flutter_boilerplate/common/widget/loading_dialog.dart';
import 'package:flutter_boilerplate/module/report/bloc/report_bloc.dart';
import 'package:flutter_boilerplate/module/report/model/report_model.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    final violationId = ModalRoute.of(context)!.settings.arguments as String?;

    return BlocProvider(
      create: (_) => ReportBloc(dio: getIt.get<Dio>())
        ..add(
          const ReportEvent.started(),
        ),
      child: ReportView(
        violationId: violationId!,
      ),
    );
  }
}

class ReportView extends StatefulWidget {
  const ReportView({super.key, required this.violationId});

  final String violationId;

  @override
  State<ReportView> createState() => _ReportViewState();
}

class _ReportViewState extends State<ReportView> {
  final titleController = TextEditingController();
  final dataController = TextEditingController();
  String titleError = '';
  List<String> images = <String>[];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ReportBloc, ReportState>(
      listener: (context, state) {
        if (state.isLoading == true) {
          loadingDialog(context);
        } else {
          Navigator.popUntil(context, ModalRoute.withName(RouteName.law));
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SizedBox.expand(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        padding: const EdgeInsets.only(
                          left: PaddingConstants.padding3U,
                          right: PaddingConstants.padding3U,
                        ),
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 0.3),
                            )
                          ],
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            const Center(
                              child: Text(
                                'Báo cáo',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Palette.jetBlack,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.arrow_back),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.all(PaddingConstants.padding3U),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(
                              controller: titleController,
                              onSubmitted: (value) {},
                              onChanged: (value) {
                                if (value.isEmpty) {
                                  setState(() {
                                    titleError = 'Tiêu đề không đươc để trống';
                                  });
                                } else {
                                  setState(() {
                                    titleError = '';
                                  });
                                }
                              },
                              // maxLines: 1,
                              decoration: const InputDecoration(
                                filled: true,
                                hintMaxLines: 1,
                                hintText: 'Tiêu đề',
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  borderSide: BorderSide(color: Palette.silver),
                                ),
                              ),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Palette.jetBlack,
                              ),
                            ),
                            const SizedBox(
                              height: SizeConstants.size2U,
                            ),
                            Text(
                              titleError,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Palette.error,
                              ),
                            ),
                            const SizedBox(
                              height: SizeConstants.size2U,
                            ),
                            TextField(
                              controller: dataController,
                              onSubmitted: (value) {},
                              maxLines: 10,
                              decoration: const InputDecoration(
                                filled: true,
                                hintMaxLines: 1,
                                hintText: 'Nội dung',
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  borderSide: BorderSide(color: Palette.silver),
                                ),
                              ),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Palette.jetBlack,
                              ),
                            ),
                            const SizedBox(
                              height: SizeConstants.size3U,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    final result =
                                        await FilePicker.platform.pickFiles(
                                      withReadStream: true,
                                      withData: true,
                                      type: FileType.custom,
                                      allowedExtensions: ['jpg', 'png', 'jpeg'],
                                      allowMultiple: true,
                                    );

                                    if (result != null) {
                                      var files = result.files;
                                      if (files.length > 3) {
                                        files = result.files.sublist(0, 3);
                                      }
                                      if (files.any(
                                        (element) => element.size > fileSize,
                                      )) {
                                        await showDialog<String>(
                                          context: context,
                                          builder: (BuildContext context) =>
                                              AlertDialog(
                                            elevation: 0,
                                            backgroundColor: Colors.white,
                                            title: const Text('Thông báo'),
                                            content: const Text(
                                                'Ảnh phải nhỏ hơn 5Mb'),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    context, 'OK'),
                                                child: const Text('OK'),
                                              ),
                                            ],
                                          ),
                                        );
                                      } else {
                                        setState(() {
                                          images.clear();
                                          for (final file in files) {
                                            images.add(file.path!);
                                          }
                                        });
                                      }
                                    }
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(
                                        PaddingConstants.padding3U),
                                    decoration: BoxDecoration(
                                      // color: Palette.gainsboro,
                                      // borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color: Palette.brand,
                                        width: 0.5,
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.photo_camera,
                                      color: Palette.brand,
                                    ),
                                  ),
                                ),
                                ...images.map(
                                  (e) => SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Container(
                                      padding: const EdgeInsets.all(
                                        PaddingConstants.padding2U,
                                      ),
                                      child: Image.file(File(e)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // const Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: PaddingConstants.padding2U,
                  left: PaddingConstants.padding3U,
                  right: PaddingConstants.padding3U,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: double.infinity,
                      height: SizeConstants.size5U,
                      child: ElevatedButton(
                        onPressed: titleController.text.isEmpty
                            ? null
                            : () async {
                                context.read<ReportBloc>().add(
                                      ReportEvent.send(
                                        report: ReportModel(
                                          title: titleController.text,
                                          data: dataController.text,
                                          violationId: widget.violationId,
                                          images: images,
                                        ),
                                      ),
                                    );
                              },
                        child: const Text('Gửi báo cáo'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
