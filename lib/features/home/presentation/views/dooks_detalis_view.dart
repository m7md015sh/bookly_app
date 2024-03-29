import 'package:flutter/material.dart';

import 'widgets/books_details_view_body.dart';

class BooksDetailsView extends StatelessWidget {
  const BooksDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BooksDetailsViewBody()),
    );
  }
}
