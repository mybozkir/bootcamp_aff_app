import 'package:bootcamp_aff_app/utility/affirmation_utility.dart';
import 'package:bootcamp_aff_app/widgets/affirmation_page_widget.dart';
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
      body: AffirmationPageWidget(
          backgroundImage: HealthUtility.healthBackgroundImageName,
          affirmationList: HealthUtility.healthAffirmationList,
          affirmationImage: HealthUtility.healthImageName,
      ),
    );
  }
}

class HealthUtility{
  static final String healthPageName = AffirmationsUtility.health_affirmations.name;
  static final List<String> healthAffirmationList = AffirmationsUtility.health_affirmations.list;
  static final String healthImageName = AffirmationsUtility.health_affirmations.imageName;
  static final String healthBackgroundImageName = AffirmationsUtility.health_affirmations.backgroundImageName;
}

