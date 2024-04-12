import 'package:bookly_app/features/home/presentation/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/newset_books_cubit/newset_books_state.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_newset_books_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBestSellerLestView extends StatelessWidget {
  const FeaturedBestSellerLestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewSetBooksCubit,NewSetBooksState>(
      builder: (context,state){
        if(state is NewSetBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,

            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.only(
                    bottom: 5.0, left: 5, right: 5, top: 5),
                child: NewSetListViewItem(book: state.books.items![index],),
              );
            },
            itemCount: state.books.items!.length,
          );
        }else if (state is NewSetBooksFailure){
         return CustomErrorWidget(errorMessage: state.errMessage,);
        }else{
          print(state);
         return Center(
           child: Container(
               width: 100,
               height: 100,
               child: const CircularProgressIndicator()),
         );
        }
      },

    );
  }
}
