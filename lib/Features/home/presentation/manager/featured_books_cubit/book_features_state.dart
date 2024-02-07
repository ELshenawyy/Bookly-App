part of 'book_features_cubit.dart';

@immutable
abstract class BookFeaturesState {}

class BookFeaturesInitial extends BookFeaturesState {}

class BookFeaturesLoading extends BookFeaturesState {}

class BookFeaturesFailure extends BookFeaturesState {
  final String errMessage;

  BookFeaturesFailure(this.errMessage);
}

class BookFeaturesSuccess extends BookFeaturesState {
  final List<BookModel> books;

  BookFeaturesSuccess(this.books);
}
