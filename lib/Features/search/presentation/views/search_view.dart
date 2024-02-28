import 'package:bookly_app/Features/search/data/repos/search_repo_impl.dart';
import 'package:bookly_app/Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_view_body.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => SearchCubit(
            //ToDo
            getIt.get<SearchRepoImplementation>()
          ),
          child: const SearchViewBody(),
        ),
      ),
    );
  }
}
