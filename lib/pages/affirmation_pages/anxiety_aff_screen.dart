import 'dart:math';

import 'package:bootcamp_aff_app/data/image_data.dart';
import 'package:bootcamp_aff_app/utility/affirmation_utility.dart';
import 'package:bootcamp_aff_app/widgets/affirmation_page_widget.dart';
import 'package:bootcamp_aff_app/widgets/affirmation_page_widget_nb.dart';
import 'package:flutter/material.dart';

class AnxietyAffirmationScreen extends StatefulWidget {
  const AnxietyAffirmationScreen({Key? key}) : super(key: key);

  @override
  State<AnxietyAffirmationScreen> createState() => _AnxietyAffirmationScreenState();
}

class _AnxietyAffirmationScreenState extends State<AnxietyAffirmationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(AnxietyUtility.anxietyPageName),
        centerTitle: true,
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: AnxietyUtility.anxietyColor,
      body: AffirmationPageWidgetNB(
        affirmationImage: AnxietyUtility.anxietyImageName,
        affirmationList: AnxietyUtility.anxietyAffirmationList,
      ),
    );
  }
}

class AnxietyUtility{
  static final String anxietyPageName = AffirmationsUtility.anxiety_affirmations.name;
  static final List<String> anxietyAffirmationList = AffirmationsUtility.anxiety_affirmations.list;
  static final String anxietyImageName = AffirmationsUtility.anxiety_affirmations.imageName;
  static final Color anxietyColor = AffirmationsUtility.anxiety_affirmations.color;
}