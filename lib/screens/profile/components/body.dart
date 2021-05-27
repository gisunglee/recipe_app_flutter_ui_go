import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app_flutter_ui_go/constants.dart';
import 'package:recipe_app_flutter_ui_go/screens/profile/components/info.dart';
import 'package:recipe_app_flutter_ui_go/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    return Column(
      children: <Widget>[
        Info(
          image: "assets/images/pic.png",
          name: "Jhon Doe",
          email: "Jhondoe01@gmail.com",
        ),
        ProfileMenuItem(
          iconSrc: "assets/icons/bookmark_fill.svg",
          title: "Saved Recipes",
          press: (){},
        ),
      ],
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    Key key,
    this.iconSrc,
    this.title,
    this.press,
  }) : super(key: key);
  final String iconSrc, title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return InkWell(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: defaultSize * 2, vertical: defaultSize * 3),
        child: Row(
          children: <Widget>[
            SvgPicture.asset(iconSrc),
            SizedBox(width: defaultSize * 2),
            Text(
              title,
              style: TextStyle(
                fontSize: defaultSize * 1.6,
                color: kTextLigntColor,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: defaultSize * 1.6,
              color: kTextLigntColor,
            ),
          ],
        ),
      ),
    );
  }
}
