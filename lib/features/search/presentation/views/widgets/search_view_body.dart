import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(left: 5,right: 30.0),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(onPressed: (){
                GoRouter.of(context).pop();
              }, icon: const Icon(Icons.arrow_back)),
              const Expanded(child: CustomSearchTextField()),

            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
            child: Text("Search Result",style: Styles.textStyle18,),
          ),
          Expanded(child: SearchListView())
        ],
      ),
    );
  }
}
