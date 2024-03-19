import 'package:bookly_app/features/home/presentation/views/widgets/custom_best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBestSellerLestView extends StatelessWidget {
  const FeaturedBestSellerLestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(physics: NeverScrollableScrollPhysics(),padding: EdgeInsets.zero,itemBuilder: (context,index){
      return const Padding(
        padding: EdgeInsets.only(bottom: 5.0,left: 5,right: 5,top: 5),
        child: BestSellerListViewItem(),
      );
    },itemCount: 10,);
  }
}
