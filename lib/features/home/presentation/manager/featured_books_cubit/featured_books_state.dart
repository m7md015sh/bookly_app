

import 'package:bookly_app/features/home/data/models/book_model.dart';

abstract class FeaturedBooksState  {
  const FeaturedBooksState();

}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;

  const FeaturedBooksFailure(this.errMessage);
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final BookModel books;

  const FeaturedBooksSuccess(this.books);
}