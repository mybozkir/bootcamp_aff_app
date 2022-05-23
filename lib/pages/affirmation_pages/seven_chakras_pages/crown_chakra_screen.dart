import 'package:bootcamp_aff_app/utility/affirmation_utility.dart';
import 'package:bootcamp_aff_app/widgets/affirmation_page_widget.dart';
import 'package:flutter/material.dart';

class CrownChakraScreen extends StatefulWidget {
  const CrownChakraScreen({Key? key}) : super(key: key);

  @override
  State<CrownChakraScreen> createState() => _CrownChakraScreenState();
}

class _CrownChakraScreenState extends State<CrownChakraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(CrownChakraUtility.crownChakraPageName),
        centerTitle: true,
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
      ),
      body: AffirmationPageWidget(
        backgroundImage: CrownChakraUtility.crownChakraBackgroundImageName,
        affirmationList: CrownChakraUtility.crownChakraAffirmationList,
        affirmationImage: CrownChakraUtility.crownChakraImageName,
      ),
    );
  }
}

class CrownChakraUtility{
  static final String crownChakraPageName = AffirmationsUtility.crown_chakra_affirmations.name;
  static final List<String> crownChakraAffirmationList = AffirmationsUtility.crown_chakra_affirmations.list;
  static final String crownChakraImageName = AffirmationsUtility.crown_chakra_affirmations.imageName;
  static final String crownChakraBackgroundImageName = AffirmationsUtility.crown_chakra_affirmations.backgroundImageName;
}