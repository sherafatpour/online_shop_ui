import 'package:flutter/material.dart';
import 'package:online_shop/size_config.dart';

class TitleText extends StatelessWidget {
  double defaultSize = SizeConfig.defaultSize;
  final String title;

  TitleText({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title , style: TextStyle(fontSize: defaultSize * 1.6 ,fontWeight: FontWeight.bold),);
  }
}