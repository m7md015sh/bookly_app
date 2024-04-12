import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_newset_books_lest_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_horizontal_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  return  const CustomScrollView(
    physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              // CustomListViewItem(),
              FeaturedHorizontalBooksListView(),
              Padding(
                padding: EdgeInsets.only(left: 16.0,bottom:16.0,right: 16.0,top: 24.0),
                child: Text('NewSet Books',style: Styles.textStyle20,),
              ),
              // BestSellerListViewItem(),
              // FeaturedBestSellerLestView(),

            ],
          )
        ),
        SliverFillRemaining(
          child: FeaturedBestSellerLestView(),
        )
      ],
    );


  }
}

