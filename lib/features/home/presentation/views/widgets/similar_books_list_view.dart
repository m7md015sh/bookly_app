import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_state.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit,SimilarBooksState>(
      builder: (context,state){
        if(state is SimilarBooksSuccess){
          return SizedBox(
            height: MediaQuery.of(context).size.height*0.17,

            child: ListView.builder(

                itemCount: state.books.items!.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: EdgeInsets.only(right:10.0 ,bottom: 15),
                    child: CustomBookItem(imageUrl: '${state.books.items![index].volumeInfo?.imageLinks?.smallThumbnail}'?? '',),
                  );
                }),
          );
        }else if (state is SimilarBooksFailure){
         return CustomErrorWidget( errorMessage: state.errMessage,);
        }else{
          return const Center(child:  CircularProgressIndicator());
        }
      },

    );
  }
}
