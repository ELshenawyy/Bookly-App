import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:meta/meta.dart';

part 'book_features_state.dart';

class BookFeaturesCubit extends Cubit<BookFeaturesState> {
  BookFeaturesCubit() : super(BookFeaturesInitial());
}
