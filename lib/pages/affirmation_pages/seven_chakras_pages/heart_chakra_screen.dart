import 'package:bootcamp_aff_app/utility/affirmation_utility.dart';
import 'package:bootcamp_aff_app/widgets/affirmation_page_widget.dart';
import 'package:flutter/material.dart';

class HeartChakraScreen extends StatefulWidget {
  const HeartChakraScreen({Key? key}) : super(key: key);

  @override
  State<HeartChakraScreen> createState() => _HeartChakraScreenState();
}

class _HeartChakraScreenState extends State<HeartChakraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(HeartChakraUtility.heartChakraPageName),
        centerTitle: true,
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
      ),
      body: AffirmationPageWidget(
        backgroundImage: HeartChakraUtility.heartChakraBackgroundImageName,
        affirmationList: HeartChakraUtility.heartChakraAffirmationList,
        affirmationImage: HeartChakraUtility.heartChakraImageName,
      ),
    );
  }
}

class HeartChakraUtility{
  static final String heartChakraPageName = AffirmationsUtility.heart_chakra_affirmations.name;
  static final List<String> heartChakraAffirmationList = AffirmationsUtility.heart_chakra_affirmations.list;
  static final String heartChakraImageName = AffirmationsUtility.heart_chakra_affirmations.imageName;
  static final String heartChakraBackgroundImageName = AffirmationsUtility.heart_chakra_affirmations.backgroundImageName;
}