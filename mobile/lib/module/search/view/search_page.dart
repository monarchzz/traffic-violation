import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/common/di/di.dart';
import 'package:flutter_boilerplate/module/search/bloc/search_bloc.dart';
import 'package:flutter_boilerplate/module/search/view/view.dart';
import 'package:flutter_boilerplate/repository/log_repository/log_repository.dart';
import 'package:flutter_boilerplate/repository/violation_repository/violation_repository.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SearchBloc(
        violationRepository: getIt.get<ViolationRepository>(),
        logRepository: getIt.get<LogRepository>(),
      )..add(const SearchEvent.started()),
      child: BlocBuilder<SearchBloc, SearchState>(
        buildWhen: (previous, current) {
          return previous.map(
                loading: (_) => 3,
                success: (value) => value.index,
                failure: (_) => 4,
              ) !=
              current.map(
                loading: (_) => 3,
                success: (value) => value.index,
                failure: (_) => 4,
              );
        },
        builder: (context, state) {
          return state.map(
            loading: (_) => const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
            success: (value) {
              return WillPopScope(
                onWillPop: () async {
                  if (value.index == 0) {
                    return true;
                  } else {
                    context.read<SearchBloc>().add(const SearchEvent.pop());

                    return false;
                  }
                },
                child: value.index == 0
                    ? const SearchView()
                    : BlocProvider.value(
                        value: BlocProvider.of<SearchBloc>(context),
                        child: SearchResult(),
                      ),
              );
            },
            failure: (value) => Scaffold(
              body: Center(child: Text(value.message ?? '')),
            ),
          );
        },
      ),
    );
  }
}
