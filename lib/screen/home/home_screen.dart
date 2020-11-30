import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/constants.dart';
import 'package:online_shop/screen/home/component/body.dart';
import 'package:online_shop/size_config.dart';

class Home extends StatelessWidget {
  double defaultSize = SizeConfig.defaultSize;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/menu.svg",
          height: SizeConfig.defaultSize * 2,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/scan.svg"),
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.only(right:16.0),
          child: Center(
            child: Text(
              "scan",
              style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
            ),
          ),
        ),

      ],
    );
  }
}
