import 'package:bootcamp_aff_app/utility/affirmation_utility.dart';
import 'package:bootcamp_aff_app/widgets/affirmation_page_widget.dart';
import 'package:flutter/material.dart';

class RootChakraScreen extends StatefulWidget {
  const RootChakraScreen({Key? key}) : super(key: key);

  @override
  State<RootChakraScreen> createState() => _RootChakraScreenState();
}

class _RootChakraScreenState extends State<RootChakraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(RootChakraUtility.rootChakraPageName),
        centerTitle: true,
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
      ),
      body: AffirmationPageWidget(
          backgroundImage: RootChakraUtility.rootChakraBackgroundImageName,
          affirmationList: RootChakraUtility.rootChakraAffirmationList,
          affirmationImage: RootChakraUtility.rootChakraImageName,
      ) ,
    );
  }
}

class RootChakraUtility{
  static final String rootChakraPageName = AffirmationsUtility.root_chakra_affirmations.name;
  static final List<String> rootChakraAffirmationList = AffirmationsUtility.root_chakra_affirmations.list;
  static final String rootChakraImageName = AffirmationsUtility.root_chakra_affirmations.imageName;
  static final String rootChakraBackgroundImageName = AffirmationsUtility.root_chakra_affirmations.backgroundImageName;
}