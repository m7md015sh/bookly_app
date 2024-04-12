import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewSetListViewItem extends StatelessWidget {
   const NewSetListViewItem({Key? key, required this.book}) : super(key: key);
    final Item book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBooksDetailsView,extra: book);
      },
      child: SizedBox(
        height: 125,

        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(

            children: [
              AspectRatio(
                aspectRatio: 3 / 3.8,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image:  DecorationImage(
                          image: NetworkImage('${book.volumeInfo!.imageLinks!.smallThumbnail}'),
                          fit: BoxFit.fill)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child:  Text(
                        "${book.volumeInfo!.title}",
                        style: Styles.textStyle16.copyWith(fontSize: 16,fontWeight: FontWeight.bold),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      book.volumeInfo!.authors!.first,
                      style: Styles.textStyle14.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          "Free",
                          style: Styles.textStyle16
                              .copyWith(fontWeight: FontWeight.w900),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width*.15,),

                         BookRating(rating: book.volumeInfo?.averageRating ?? 0, count: book.volumeInfo?.ratingsCount ??0,),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


