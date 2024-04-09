

import 'package:bookly_app/features/home/data/models/book_model.dart';

abstract class NewSetBooksState  {
  const NewSetBooksState();

}

class NewSetBooksInitial extends NewSetBooksState {}

class NewSetBooksLoading extends NewSetBooksState {}

class NewSetBooksFailure extends NewSetBooksState {
  final String errMessage;

  const NewSetBooksFailure(this.errMessage);
}

class NewSetBooksSuccess extends NewSetBooksState {
  final BookModel books;

  const NewSetBooksSuccess(this.books);
}