import 'package:flutter/material.dart';
import 'package:online_shop/models/Categories.dart';
import 'package:online_shop/screen/home/component/category_card.dart';
class Categories extends StatelessWidget {
  final List<Category> category;
  const Categories({Key key,@required this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:
      Row(
          children: List.generate(category.length, (index) =>CategoryCard(category: category[index]))
      ),

    );
  }
}
