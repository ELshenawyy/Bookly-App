import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../home/data/models/book_model/book_model.dart';
import '../../../data/repos/search_repo.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  Future<void> getSearched({required String word}) async {
    emit(SearchLoading());
    var data = await searchRepo.fetchSearchedBooks(word);
    data.fold((failure) {
      emit(SearchFailure(failure.errMessage));
    }, (books) {
      emit(SearchSuccess(books));
    });
  }
}
