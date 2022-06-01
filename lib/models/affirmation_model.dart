import 'package:flutter/material.dart';

class AffirmationModel {
  String name;
  String imageName;
  String backgroundImageName;
  List<String> list;

  AffirmationModel({
    required this.name,
    required this.imageName,
    required this.backgroundImageName,
    required this.list,
  });
}

class AffirmationModelNB {
  String name;
  String imageName;
  Color color;
  List<String> list;

  AffirmationModelNB({
    required this.name,
    required this.imageName,
    required this.color,
    required this.list,
});
}