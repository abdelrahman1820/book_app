part of 'simillar_books_cubit.dart';

sealed class SimillarBooksState extends Equatable {
  const SimillarBooksState();

  @override
  List<Object> get props => [];
}

final class SimillarBooksInitial extends SimillarBooksState {}

final class SimillarBooksLoading extends SimillarBooksState {}

final class SimillarBooksFailure extends SimillarBooksState {
  final String errmessage;

  const SimillarBooksFailure({required this.errmessage});
}

final class SimillarBooksSucess extends SimillarBooksState {
  final List<BookModel> books;

 const SimillarBooksSucess({required this.books});
}
