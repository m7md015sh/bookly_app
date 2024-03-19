import 'package:bookly_app/core/utils/assets/assets_paths.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_best_seller_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_best_seller_lest_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_horizontal_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  return  const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              // CustomListViewItem(),
              FeaturedHorizontalBooksListView(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 24),
                child: Text('Best Seller',style: Styles.textStyle20,),
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

