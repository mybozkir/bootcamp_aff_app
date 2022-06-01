import 'package:bootcamp_aff_app/utility/affirmation_utility.dart';
import 'package:bootcamp_aff_app/widgets/affirmation_page_widget.dart';
import 'package:bootcamp_aff_app/widgets/affirmation_page_widget_nb.dart';
import 'package:flutter/material.dart';

class HealthAffirmationScreen extends StatefulWidget {
  const HealthAffirmationScreen({Key? key}) : super(key: key);

  @override
  State<HealthAffirmationScreen> createState() => _HealthAffirmationScreenState();
}

class _HealthAffirmationScreenState extends State<HealthAffirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(HealthUtility.healthPageName),
        centerTitle: true,
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: HealthUtility.healthColor,
      body: AffirmationPageWidgetNB(
        affirmationImage: HealthUtility.healthImageName,
        affirmationList: HealthUtility.healthAffirmationList,
      ),
    );
  }
}

class HealthUtility{
  static final String healthPageName = AffirmationsUtility.health_affirmations.name;
  static final List<String> healthAffirmationList = AffirmationsUtility.health_affirmations.list;
  static final String healthImageName = AffirmationsUtility.health_affirmations.imageName;
  static final Color healthColor = AffirmationsUtility.health_affirmations.color;
}

