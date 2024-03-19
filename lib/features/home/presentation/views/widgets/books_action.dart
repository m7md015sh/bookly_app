import 'package:bookly_app/features/home/presentation/views/widgets/custom_buttons_action.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomButtonAction( text: "19.99\$",backgroundColor: Colors.white,textColor: Colors.black,borderRadius: BorderRadius.only(topLeft:Radius.circular(16),bottomLeft: Radius.circular(16)),)),
        Expanded(child: CustomButtonAction(text: "Preview",backgroundColor: Color(0xffEF8262),textColor: Colors.white,borderRadius: BorderRadius.only(topRight:Radius.circular(16),bottomRight: Radius.circular(16)),)),
      ],
    );
  }
}
