import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'book_features_state.dart';

class BookFeaturesCubit extends Cubit<BookFeaturesState> {
  BookFeaturesCubit(this.homeRepo) : super(BookFeaturesInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(BookFeaturesLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      emit(BookFeaturesFailure(failure.errMessage));
    }, (books) {
      emit(BookFeaturesSuccess(books));
    });
  }
}
