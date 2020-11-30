import 'package:flutter/material.dart';
import 'package:online_shop/models/Product.dart';
import 'package:online_shop/screen/detail/product_detail.dart';
import 'package:online_shop/screen/home/component/product_card.dart';
import 'package:online_shop/size_config.dart';

class RecommandProducts extends StatelessWidget {
  final List<Product> products;

  const RecommandProducts({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    return Padding(
      padding:  EdgeInsets.all(defaultSize * 2),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: SizeConfig.orientation == Orientation.portrait ? 2: 4,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 0.693),
        itemBuilder: (context, index) =>
            ProductCard(product: products[index], press: () { Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail(product: products[index],)));}),
      ),
    );
  }
}
