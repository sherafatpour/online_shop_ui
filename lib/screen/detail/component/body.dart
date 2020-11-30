import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:online_shop/constants.dart';
import 'package:online_shop/models/Product.dart';
import 'package:online_shop/screen/detail/component/product_description.dart';
import 'package:online_shop/screen/detail/component/product_info.dart';
import 'package:online_shop/size_config.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: SizeConfig.orientation == Orientation.landscape
            ? SizeConfig.screenWidth
            : SizeConfig.screenHeight - AppBar().preferredSize.height,
        child: Stack(
          children: <Widget>[
            ProductInfo(
              product: product,
            ),
            Positioned(
                left: 0,
                right: 0,
                top: defaultSize * 37.5,
                child: ProductDescription(product: product)),
            Positioned(
              top: defaultSize * 9.5,
              right: -defaultSize * 6.5,
              child: Hero(
                tag: product.id,
                child: Image.network(
                  product.image,
                  fit: BoxFit.cover,
                  width: defaultSize * 36.4,
                  height: defaultSize * 37.8,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
