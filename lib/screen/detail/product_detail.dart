import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/constants.dart';
import 'package:online_shop/models/Product.dart';
import 'package:online_shop/screen/detail/component/body.dart';
import 'package:online_shop/size_config.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/arrow-long-left.svg"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              icon: SvgPicture.asset("assets/icons/bag.svg"),
              onPressed: () {}),
       SizedBox(width: SizeConfig.defaultSize,) ]);
  }
}
