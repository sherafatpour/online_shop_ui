import 'package:flutter/material.dart';
import 'package:online_shop/component/title_text.dart';

import 'package:online_shop/screen/home/component/category.dart';
import 'package:online_shop/screen/home/component/recommand_product.dart';
import 'package:online_shop/service/fetch_categories.dart';
import 'package:online_shop/service/fetch_prodoct.dart';
import 'package:online_shop/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: TitleText(title: "Brows By Category"),
          ),
          FutureBuilder(
            future: fetchCategories(),
            builder: (context, snapshot) => snapshot.hasData
                ? Categories(
                    category: snapshot.data,
                  )
                : Center(child: Image.asset("assets/ripple.gif")),
          ),
          Divider(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: TitleText(title: "Recommands For You"),
          ),
          SizedBox(
            width: defaultSize,
          ),
          FutureBuilder(
              future: fetchProducts(),
              builder: (context, snapshot) => snapshot.hasData
                  ? RecommandProducts(products: snapshot.data )
                  :  Center(child: Image.asset("assets/ripple.gif")))
        ],
      ),
    );
  }
}

