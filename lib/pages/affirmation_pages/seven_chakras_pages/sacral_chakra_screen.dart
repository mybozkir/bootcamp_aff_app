import 'package:bootcamp_aff_app/utility/affirmation_utility.dart';
import 'package:bootcamp_aff_app/widgets/affirmation_page_widget.dart';
import 'package:flutter/material.dart';

class SacralChakraScreen extends StatefulWidget {
  const SacralChakraScreen({Key? key}) : super(key: key);

  @override
  State<SacralChakraScreen> createState() => _SacralChakraScreenState();
}

class _SacralChakraScreenState extends State<SacralChakraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(SacralChakraUtility.sacralChakraPageName),
        centerTitle: true,
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
      ),
      body: AffirmationPageWidget(
        backgroundImage: SacralChakraUtility.sacralChakraBackgroundImageName,
        affirmationList: SacralChakraUtility.sacralChakraAffirmationList,
        affirmationImage: SacralChakraUtility.sacralChakraImageName,
      ),
    );
  }
}

class SacralChakraUtility{
  static final String sacralChakraPageName = AffirmationsUtility.sacral_chakra_affirmations.name;
  static final List<String> sacralChakraAffirmationList = AffirmationsUtility.sacral_chakra_affirmations.list;
  static final String sacralChakraImageName = AffirmationsUtility.sacral_chakra_affirmations.imageName;
  static final String sacralChakraBackgroundImageName = AffirmationsUtility.sacral_chakra_affirmations.backgroundImageName;
}
