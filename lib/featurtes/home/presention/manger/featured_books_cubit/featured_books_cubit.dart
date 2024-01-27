import 'package:bloc/bloc.dart';
import 'package:booklyapp/featurtes/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/featurtes/home/data/models/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedbooksCubit extends Cubit<FeaturedbooksState> {
  FeaturedbooksCubit({ required this.homerepo, }) : super(FeaturedbooksInitial());
  final HomeRepo homerepo;
  Future<void> fethchFeaturedBooks() async {
    emit(FeaturedbooksLoading());
    var result = await homerepo.featchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedbooksFailure(errMessage: failure.errorMessage));
    }, (books) {
      emit(FeaturedbooksSuccess(books: books));
    });
  }
}
