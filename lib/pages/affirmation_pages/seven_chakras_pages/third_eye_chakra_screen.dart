import 'package:bootcamp_aff_app/utility/affirmation_utility.dart';
import 'package:bootcamp_aff_app/widgets/affirmation_page_widget.dart';
import 'package:flutter/material.dart';

class ThirdEyeChakraScreen extends StatefulWidget {
  const ThirdEyeChakraScreen({Key? key}) : super(key: key);

  @override
  State<ThirdEyeChakraScreen> createState() => _ThirdEyeChakraScreenState();
}

class _ThirdEyeChakraScreenState extends State<ThirdEyeChakraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(ThirdEyeChakraUtility.thirdEyeChakraPageName),
        centerTitle: true,
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
      ),
      body: AffirmationPageWidget(
        backgroundImage: ThirdEyeChakraUtility.thirdEyeChakraBackgroundImageName,
        affirmationList: ThirdEyeChakraUtility.thirdEyeChakraAffirmationList,
        affirmationImage: ThirdEyeChakraUtility.thirdEyeChakraImageName,
      ),
    );
  }
}

class ThirdEyeChakraUtility{
  static final String thirdEyeChakraPageName = AffirmationsUtility.third_eye_chakra_affirmations.name;
  static final List<String> thirdEyeChakraAffirmationList = AffirmationsUtility.third_eye_chakra_affirmations.list;
  static final String thirdEyeChakraImageName = AffirmationsUtility.third_eye_chakra_affirmations.imageName;
  static final String thirdEyeChakraBackgroundImageName = AffirmationsUtility.third_eye_chakra_affirmations.backgroundImageName;
}
