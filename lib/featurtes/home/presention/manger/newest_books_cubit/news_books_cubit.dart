import 'package:bloc/bloc.dart';
import 'package:booklyapp/featurtes/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/featurtes/home/data/models/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'news_books_state.dart';

class NewsBooksCubit extends Cubit<NewsBooksState> {
  NewsBooksCubit({required this.homerepo}) : super(NewsBooksInitial());
  final HomeRepo homerepo;
  Future<void> featchNewestBooks() async {
    var result = await homerepo.featchnNwestBooks();
    result.fold((failure) {
      emit(NewsBooksFailure(errMessage: failure.errorMessage));
    }, (books) {
      emit(NewsBooksSucess(books: books));
    });
  }
}
