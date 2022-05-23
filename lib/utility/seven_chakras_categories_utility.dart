import 'package:bootcamp_aff_app/models/seven_chakras_category_model.dart';
import 'package:bootcamp_aff_app/pages/affirmation_pages/seven_chakras_pages/crown_chakra_screen.dart';
import 'package:bootcamp_aff_app/pages/affirmation_pages/seven_chakras_pages/heart_chakra_screen.dart';
import 'package:bootcamp_aff_app/pages/affirmation_pages/seven_chakras_pages/root_chakra_screen.dart';
import 'package:bootcamp_aff_app/pages/affirmation_pages/seven_chakras_pages/sacral_chakra_screen.dart';
import 'package:bootcamp_aff_app/pages/affirmation_pages/seven_chakras_pages/solar_plexus_chakra_screen.dart';
import 'package:bootcamp_aff_app/pages/affirmation_pages/seven_chakras_pages/third_eye_chakra_screen.dart';
import 'package:bootcamp_aff_app/pages/affirmation_pages/seven_chakras_pages/throat_chakra_screen.dart';
import 'package:flutter/material.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

class SevenChakrasCategoryutility{

  static List<SevenChakrasCategory> getSevenCategories(){
    return[
      SevenChakrasCategory(
          name: 'Crown Chakra',
          color: _ColorItems.crownChakraColor,
          imageName: 'crown_chakra_logo',
          icon: Icon(IcoFontIcons.briefcase2),
          routePage: _SevenChakrasCategoryRoutePages.crown_chakra_screen
      ),
      SevenChakrasCategory(
          name: 'Heart Chakra',
          color: _ColorItems.heartChakraColor,
          imageName: 'heart_chakra_logo',
          icon: Icon(IcoFontIcons.briefcase2),
          routePage: _SevenChakrasCategoryRoutePages.heart_chakra_screen,
      ),
      SevenChakrasCategory(
          name: 'Root Chakra',
          color: _ColorItems.rootChakraColor,
          imageName: 'root_chakra_logo',
          icon: Icon(IcoFontIcons.briefcase2),
          routePage: _SevenChakrasCategoryRoutePages.root_chakra_screen,
      ),
      SevenChakrasCategory(
          name: 'Sacral Chakra',
          color: _ColorItems.sacralChakraColor,
          imageName: 'sacral_chakra_logo',
          icon: Icon(IcoFontIcons.briefcase2),
          routePage: _SevenChakrasCategoryRoutePages.sacral_chakra_screen
      ),
      SevenChakrasCategory(
          name: 'Solar Plexus Chakra',
          color: _ColorItems.solarPlexusChakraColor,
          imageName: 'solar_plexus_chakra_logo',
          icon: Icon(IcoFontIcons.briefcase2),
          routePage: _SevenChakrasCategoryRoutePages.solar_plexus_chakra_screen,
      ),
      SevenChakrasCategory(
          name: 'Third Eye Chakra',
          color: _ColorItems.thirdEyeChakraColor,
          imageName: 'third_eye_chakra_logo',
          icon: Icon(IcoFontIcons.briefcase2),
          routePage: _SevenChakrasCategoryRoutePages.third_eye_chakra_screen
      ),
      SevenChakrasCategory(
          name: 'Throat Chakra',
          color: _ColorItems.throatChakraEyeChakraColor,
          imageName: 'throat_chakra_logo',
          icon: Icon(IcoFontIcons.briefcase2),
          routePage: _SevenChakrasCategoryRoutePages.throat_chakra_screen,
      ),
    ];
  }
}

class _ColorItems{
  static const Color crownChakraColor = Colors.lightBlue;
  static const Color heartChakraColor = Colors.red;
  static const Color rootChakraColor = Colors.green;
  static const Color sacralChakraColor = Colors.pinkAccent;
  static const Color solarPlexusChakraColor = Colors.white70;
  static const Color thirdEyeChakraColor = Colors.deepPurpleAccent;
  static const Color throatChakraEyeChakraColor = Colors.deepPurpleAccent;
}

class _SevenChakrasCategoryRoutePages{
  static const CrownChakraScreen crown_chakra_screen = CrownChakraScreen();
  static const HeartChakraScreen heart_chakra_screen = HeartChakraScreen();
  static const RootChakraScreen root_chakra_screen = RootChakraScreen();
  static const SacralChakraScreen sacral_chakra_screen = SacralChakraScreen();
  static const SolarPlexusChakraScreen solar_plexus_chakra_screen = SolarPlexusChakraScreen();
  static const ThirdEyeChakraScreen third_eye_chakra_screen = ThirdEyeChakraScreen();
  static const ThroatChakraScreen throat_chakra_screen = ThroatChakraScreen();
}