import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/books_details_view_body.dart';

class BooksDetailsView extends StatefulWidget {
  final Item book;

   const BooksDetailsView({Key? key, required this.book}) : super(key: key);

  @override
  State<BooksDetailsView> createState() => _BooksDetailsViewState();


}

class _BooksDetailsViewState extends State<BooksDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(category: '${widget.book.volumeInfo?.categories?.first}');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BooksDetailsViewBody( book: widget.book,)),
    );
  }
}
