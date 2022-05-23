import 'package:bootcamp_aff_app/utility/affirmation_utility.dart';
import 'package:bootcamp_aff_app/widgets/affirmation_page_widget.dart';
import 'package:flutter/material.dart';

class SolarPlexusChakraScreen extends StatefulWidget {
  const SolarPlexusChakraScreen({Key? key}) : super(key: key);

  @override
  State<SolarPlexusChakraScreen> createState() => _SolarPlexusChakraScreenState();
}

class _SolarPlexusChakraScreenState extends State<SolarPlexusChakraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(SolarPlexusChakraUtility.solarPlexusChakraPageName),
        centerTitle: true,
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
      ),
      body: AffirmationPageWidget(
        backgroundImage: SolarPlexusChakraUtility.solarPlexusChakraBackgroundImageName,
        affirmationList: SolarPlexusChakraUtility.solarPlexusChakraAffirmationList,
        affirmationImage: SolarPlexusChakraUtility.solarPlexusChakraImageName,
      ),
    );
  }
}

class SolarPlexusChakraUtility{
  static final String solarPlexusChakraPageName = AffirmationsUtility.solar_plexus_chakra_affirmations.name;
  static final List<String> solarPlexusChakraAffirmationList = AffirmationsUtility.solar_plexus_chakra_affirmations.list;
  static final String solarPlexusChakraImageName = AffirmationsUtility.solar_plexus_chakra_affirmations.imageName;
  static final String solarPlexusChakraBackgroundImageName = AffirmationsUtility.solar_plexus_chakra_affirmations.backgroundImageName;
}