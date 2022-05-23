import 'package:bootcamp_aff_app/utility/affirmation_utility.dart';
import 'package:bootcamp_aff_app/widgets/affirmation_page_widget.dart';
import 'package:flutter/material.dart';

class ThroatChakraScreen extends StatefulWidget {
  const ThroatChakraScreen({Key? key}) : super(key: key);

  @override
  State<ThroatChakraScreen> createState() => _ThroatChakraScreenState();
}

class _ThroatChakraScreenState extends State<ThroatChakraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(ThroatChakraUtility.throatChakraPageName),
        centerTitle: true,
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
      ),
      body: AffirmationPageWidget(
        backgroundImage: ThroatChakraUtility.throatChakraBackgroundImageName,
        affirmationList: ThroatChakraUtility.throatChakraAffirmationList,
        affirmationImage: ThroatChakraUtility.throatChakraImageName,
      ),
    );
  }
}

class ThroatChakraUtility{
  static final String throatChakraPageName = AffirmationsUtility.throat_chakra_affirmations.name;
  static final List<String> throatChakraAffirmationList = AffirmationsUtility.throat_chakra_affirmations.list;
  static final String throatChakraImageName = AffirmationsUtility.throat_chakra_affirmations.imageName;
  static final String throatChakraBackgroundImageName = AffirmationsUtility.throat_chakra_affirmations.backgroundImageName;
}
