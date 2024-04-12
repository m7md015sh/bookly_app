

import 'package:bookly_app/features/home/data/models/book_model.dart';

abstract class SimilarBooksState  {
  const SimilarBooksState();

}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksFailure extends SimilarBooksState {
  final String errMessage;

  const SimilarBooksFailure(this.errMessage);
}

class SimilarBooksSuccess extends SimilarBooksState {
  final BookModel books;

  const SimilarBooksSuccess(this.books);
}