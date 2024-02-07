part of 'new_set_books_cubit.dart';

@immutable
abstract class NewSetBooksState {}

class NewSetBooksInitial extends NewSetBooksState {}

class NewSetBooksLoading extends NewSetBooksState {}

class NewSetBooksFailure extends NewSetBooksState {
  final String errMessage;

  NewSetBooksFailure(this.errMessage);
}

class NewSetBooksSuccess extends NewSetBooksState {
  final List<BookModel> books;

  NewSetBooksSuccess(this.books);
}
