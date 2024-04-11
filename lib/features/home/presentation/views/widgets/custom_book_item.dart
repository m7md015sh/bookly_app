import 'package:bookly_app/core/utils/assets/assets_paths.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
   const CustomBookItem({Key? key, required this.imageUrl}) : super(key: key);
   final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3/4,
      child: Container(

        decoration:  BoxDecoration(

          borderRadius: BorderRadius.circular(16),
          image:  DecorationImage(image: NetworkImage(imageUrl),fit: BoxFit.fill)
        ),
      ),
    );
  }
}
