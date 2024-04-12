import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_buttons_action.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key, required this.book}) : super(key: key);
final Item book;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const  Expanded(
            child: CustomButtonAction(

          text: "Free",
          backgroundColor: Colors.white,
          textColor: Colors.black,
          borderRadius:  BorderRadius.only(
              topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
        )),
         Expanded(
            child: CustomButtonAction(
              onPressed: ()async{
                Uri uri=Uri.parse(book.volumeInfo!.previewLink!);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                }
              },
          text: "Preview",
          backgroundColor: Color(0xffEF8262),
          textColor: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
        )),
      ],
    );
  }
}
