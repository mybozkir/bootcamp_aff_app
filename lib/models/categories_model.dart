import 'package:flutter/cupertino.dart';


class Category {
  String name;
  Icon icon;
  Color color;
  String imageName;
  dynamic routePage;


Category({
    required this.name,
    required this.color,
    required this.imageName,
    required this.icon,
    required this.routePage
});

}