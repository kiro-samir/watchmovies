import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';
import 'package:movies_app/data/browseModel/categoryModel.dart';

class ItemCategory extends StatelessWidget {
  String imageurl;
  CategoryDetails categoryDetails;

  ItemCategory({
    super.key,
    required this.categoryDetails,
    required this.imageurl,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.network(
          imageurl,
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Container(
          color: Colors.grey[700]?.withOpacity(0.4),
        ),
        Center(
          child: Text(
            categoryDetails.name ?? '',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        )
      ],
    );
  }
}
