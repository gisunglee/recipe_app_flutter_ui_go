import 'package:flutter/material.dart';
import 'package:recipe_app_flutter_ui_go/home/components/categoies.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Categories(),
      ],
    );
  }
}

