import 'package:bootcamp_aff_app/utility/affirmation_utility.dart';
import 'package:bootcamp_aff_app/widgets/affirmation_page_widget.dart';
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
      body: AffirmationPageWidget(
          backgroundImage: AnxietyUtility.anxietyBackgroundImageName,
          affirmationList: AnxietyUtility.anxietyAffirmationList,
          affirmationImage: AnxietyUtility.anxietyImageName,
      ),
    );
  }
}

class AnxietyUtility{
  static final String anxietyPageName = AffirmationsUtility.anxiety_affirmations.name;
  static final List<String> anxietyAffirmationList = AffirmationsUtility.anxiety_affirmations.list;
  static final String anxietyImageName = AffirmationsUtility.anxiety_affirmations.imageName;
  static final String anxietyBackgroundImageName = AffirmationsUtility.anxiety_affirmations.backgroundImageName;
}