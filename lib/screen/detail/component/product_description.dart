import 'package:flutter/material.dart';
import 'package:online_shop/constants.dart';
import 'package:online_shop/models/Product.dart';
import 'package:online_shop/size_config.dart';
class ProductDescription extends StatelessWidget {
  final Product product;

  const ProductDescription({Key key,@required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    return  Container(
      constraints: BoxConstraints(minHeight: defaultSize * 44),
      padding: EdgeInsets.only(
          top: defaultSize * 9,
          left: defaultSize * 2,
          right: defaultSize * 2),
      height: 500,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(defaultSize * 2.3),
              topRight: Radius.circular(defaultSize * 2.3))),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.subTitle,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: defaultSize * 1.8),
            ),
            SizedBox(
              height: defaultSize * 3,
            ),
            Text(
              product.description,
              style: TextStyle(
                  fontSize: defaultSize * 1.5,
                  height: 1.5,
                  color: kTextColor.withOpacity(.7)),
            ),
            SizedBox(
              height: defaultSize * 3,
            ),
            SizedBox(
                width: double.infinity,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  padding: EdgeInsets.all(defaultSize * 1.5),
                  onPressed: () {},
                  child: Text(
                    "Add To Card",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: defaultSize * 1.6,
                        fontWeight: FontWeight.bold),
                  ),
                  color: kPrimaryColor,
                ))
          ],
        ),
      ),
    );
  }
}
