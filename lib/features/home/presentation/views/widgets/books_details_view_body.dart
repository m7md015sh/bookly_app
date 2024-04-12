import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
      return CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  const CustomAppBarDetailsView(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * .2),
                    child: const CustomBookItem(imageUrl: 'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg',),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    'The Gangle Book',
                    style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      'Rudyard Clipping',
                      style: Styles.textStyle16.copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const BookRating(
                    mainAxisAlignment: MainAxisAlignment.center, rating: 0, count: 250,
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  const BooksAction(),
                  const Expanded(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "You can also like",
                        style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
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
          )
        ],
      );

  }
}
