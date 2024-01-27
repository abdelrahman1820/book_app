import 'package:bloc/bloc.dart';
import 'package:booklyapp/featurtes/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/featurtes/home/data/models/repos/home_repo.dart';
import 'package:booklyapp/featurtes/home/data/models/repos/home_repo_implemintaion.dart';
import 'package:equatable/equatable.dart';

part 'simillar_books_state.dart';

class SimillarBooksCubit extends Cubit<SimillarBooksState> {
  SimillarBooksCubit( {required this.homerepo}) : super(SimillarBooksInitial());
  final HomeRepo homerepo;

  Future<void> featchSimillarBooks({required String cattegory}) async {
    emit(SimillarBooksLoading());
    var result = await homerepo.featchSimilarBooks(category: cattegory);
    result.fold((failure) {
      emit(SimillarBooksFailure(errmessage: failure.errorMessage));
    }, (books) => {emit(SimillarBooksSucess(books: books))});
  }
}
