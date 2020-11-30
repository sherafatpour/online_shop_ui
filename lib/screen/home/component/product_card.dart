import 'package:flutter/material.dart';
import 'package:online_shop/component/title_text.dart';
import 'package:online_shop/constants.dart';
import 'package:online_shop/models/Product.dart';
import 'package:online_shop/size_config.dart';


class ProductCard extends StatelessWidget {
  double defaultSize = SizeConfig.defaultSize;
final Product product;
final Function press;

ProductCard({Key key,@required this.product , @required this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(defaultSize * 2),
      child: GestureDetector(
        onTap: press,
        child: Container(
          width: defaultSize * 14.5,
          decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.circular(30)),
          child: AspectRatio(
            aspectRatio: 0.693,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Hero(
                    tag: product.id,
                    child: FadeInImage.assetNetwork(
                      image: product.image,
                      placeholder: "assets/ripple.gif",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal :defaultSize ),
                  child: TitleText(title: product.title),
                ),
                SizedBox(
                  height: defaultSize / 2,
                ),
                Text("\$${product.price}")
              ],
            ),
          ),
        ),
      ),
    )
    ;
  }
}
