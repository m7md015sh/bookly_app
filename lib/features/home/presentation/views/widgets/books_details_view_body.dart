import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({Key? key, required this.book}) : super(key: key);
  final Item book;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomAppBarDetailsView(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .2),
                  child: CustomBookItem(
                    imageUrl: '${book.volumeInfo?.imageLinks?.thumbnail}',
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    '${book.volumeInfo?.title}',
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    '${book.volumeInfo?.authors?.first}',
                    style: Styles.textStyle16.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                  rating: book.volumeInfo?.averageRating ?? 0,
                  count: book.volumeInfo?.ratingsCount ?? 0,
                ),
                const SizedBox(
                  height: 37,
                ),
                 BooksAction(book: book ,),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "You can also like",
                      style: Styles.textStyle14
                          .copyWith(fontWeight: FontWeight.w600),
                    )),
                const SizedBox(
                  height: 16,
                ),
                const SimilarBooksListView(),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
