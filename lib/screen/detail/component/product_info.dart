import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/constants.dart';
import 'package:online_shop/models/Product.dart';
import 'package:online_shop/size_config.dart';

class ProductInfo extends StatelessWidget {
  final Product product;

  const ProductInfo({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    TextStyle lightTextStyle = TextStyle(color: kTextColor.withOpacity(0.6));

    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
      height: defaultSize * 37.5,
      width: defaultSize * (SizeConfig.orientation == SizeConfig.orientation? 35:15),
      child: SafeArea (
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              product.category,
              style: lightTextStyle,
            ),
            SizedBox(
              height: defaultSize,
            ),
            Text(
              product.title,
              style: TextStyle(
                  fontSize: defaultSize * 2.4,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.8,
                  height: 1.4),
            ),
            SizedBox(
              height: defaultSize * 2,
            ),
            Text(
              "From",
              style: lightTextStyle,
            ),
            Text(
              "\$${product.price}",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: defaultSize * 1.6),
            ),
            SizedBox(
              height: defaultSize * 2,
            ),
            Text(
              "Available Colors",
              style: lightTextStyle,
            ),
            Row(
              children: [
                buildColor(defaultSize ,color: Color(0xFF7Ba275) , isActive: true),
                buildColor(defaultSize ,color: Color(0xFFD7D7D7) , isActive: false),
                buildColor(defaultSize ,color: kTextColor , isActive: false),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container buildColor(double defaultSize,
      {Color color, bool isActive = false}) {
    return Container(
      margin: EdgeInsets.only(top: defaultSize, right: defaultSize),
      padding: const EdgeInsets.all(6),
      width: defaultSize * 2.4,
      height: defaultSize * 2.4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: color),
      child: isActive ? SvgPicture.asset("assets/icons/check.svg"):SizedBox(),
    );
  }
}
