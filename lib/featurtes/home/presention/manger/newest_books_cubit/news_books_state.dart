part of 'news_books_cubit.dart';

sealed class NewsBooksState extends Equatable {
  const NewsBooksState();

  @override
  List<Object> get props => [];
}

final class NewsBooksInitial extends NewsBooksState {}

final class NewsBooksSucess extends NewsBooksState {
  final List<BookModel> books;
  const NewsBooksSucess({required this.books});
}

final class NewsBooksFailure extends NewsBooksState {
  final String errMessage;
  const NewsBooksFailure({required this.errMessage});
}

final class NewsBooksLoading extends NewsBooksState {}
