import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/common/di/di.dart';
import 'package:flutter_boilerplate/module/document/bloc/document_bloc.dart';
import 'package:flutter_boilerplate/module/law/model/model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:substring_highlight/substring_highlight.dart';

class DocumentPage extends StatelessWidget {
  const DocumentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final reference = ModalRoute.of(context)!.settings.arguments as Reference?;
    return BlocProvider(
      create: (_) => DocumentBloc(
        dio: getIt.get<Dio>(),
        sharedPreferences: getIt.get<SharedPreferences>(),
      )..add(DocumentEvent.started(reference: reference!)),
      child: const DocumentView(),
    );
  }
}

class DocumentView extends StatelessWidget {
  const DocumentView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DocumentBloc, DocumentState>(
      builder: (context, state) {
        final _scrollController = ScrollController();

        final document = state.map(
          initial: (_) => null,
          success: (value) => value.document,
          failure: (_) => null,
        );

        final reference = state.map(
          initial: (_) => null,
          success: (value) => value.reference,
          failure: (_) => null,
        );

        return Scaffold(
          backgroundColor: Colors.white,
          // floatingActionButton: FloatingActionButton(
          //   child: Text('ss'),
          //   onPressed: () {
          //     if (reference != null && document != null) {
          //       _scrollController.jumpTo(10);
          //     }
          //   },
          // ),
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 50,
                  padding: const EdgeInsets.only(
                    left: PaddingConstants.padding2U,
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
                          'Căn cứ pháp lý',
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
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.arrow_back),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Container(
                      padding:
                          const EdgeInsets.all(PaddingConstants.padding2U5),
                      child: Column(
                        children: [
                          if (document != null && reference != null) ...[
                            Text(
                              'Số: ${document.title}',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Palette.jetBlack,
                              ),
                            ),
                            const SizedBox(
                              height: SizeConstants.size3U,
                            ),
                            SubstringHighlight(
                              text: document.data,
                              // term: document.data.substring(
                              //   reference.startIndex,
                              //   reference.endIndex,
                              // ),
                              term: '',
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Palette.jetBlack,
                              ),
                            ),
                          ]
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
