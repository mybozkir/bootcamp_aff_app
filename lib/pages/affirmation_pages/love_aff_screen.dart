import 'package:bootcamp_aff_app/utility/affirmation_utility.dart';
import 'package:bootcamp_aff_app/widgets/affirmation_page_widget.dart';
import 'package:bootcamp_aff_app/widgets/affirmation_page_widget_nb.dart';
import 'package:flutter/material.dart';

class LoveAffirmationScreen extends StatelessWidget {
  const LoveAffirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(LoveUtility.lovePageName),
        centerTitle: true,
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: LoveUtility.loveColor,
      body: AffirmationPageWidgetNB(
        affirmationImage: LoveUtility.loveImageName,
        affirmationList: LoveUtility.loveAffirmationList,
      ),
    );
  }
}


class LoveUtility{
  static final String lovePageName = AffirmationsUtility.love_affirmations.name;
  static final List<String> loveAffirmationList = AffirmationsUtility.love_affirmations.list;
  static final String loveImageName = AffirmationsUtility.love_affirmations.imageName;
  static final Color loveColor = AffirmationsUtility.love_affirmations.color;
}