import 'package:bootcamp_aff_app/models/categories_model.dart';
import 'package:bootcamp_aff_app/pages/affirmation_pages/anxiety_aff_screen.dart';
import 'package:bootcamp_aff_app/pages/affirmation_pages/health_aff_screen.dart';
import 'package:bootcamp_aff_app/pages/affirmation_pages/love_aff_screen.dart';
import 'package:bootcamp_aff_app/pages/affirmation_pages/money_aff_screen.dart';
import 'package:bootcamp_aff_app/pages/affirmation_pages/success_aff_screen.dart';
import 'package:bootcamp_aff_app/pages/seven_chakras_categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

class CategoryUtility{

  static List<Category> getCategories(){
    return [
      Category(
          name: "Başarı & Kariyer",
          color: _ColorItems.careerColor,
          imageName: "career",
          icon: Icon(IcoFontIcons.briefcase2),
          routePage: _CategoryRoutePages.success_screen,
      ),
      Category(
          name: "Sağlık",
          color: _ColorItems.healthColor,
          imageName: "health",
          icon: const Icon(IcoFontIcons.heartBeatAlt),
          routePage: _CategoryRoutePages.health_screen
      ),
      Category(
          name: "Bolluk & Bereket",
          color: _ColorItems.moneyColor,
          imageName: "money",
          icon: const Icon(IcoFontIcons.moneyBag),
          routePage: _CategoryRoutePages.money_screen
      ),
      Category(
          name: "Aşk & İlişkiler",
          color: _ColorItems.loveColor,
          imageName: "love",
          icon: const Icon(IcoFontIcons.love),
          routePage: _CategoryRoutePages.love_screen
      ),
      Category(
          name: "Stres & Anksiyete",
          color: _ColorItems.anxietyColor,
          imageName: "anxiety",
          icon: const Icon(IcoFontIcons.autism),
          routePage: _CategoryRoutePages.anxiety_screen
      ),
      Category(
          name: "7 Çakra",
          color: _ColorItems.chakraColor,
          imageName: "chakra",
          icon: const Icon(IcoFontIcons.shipWheel),
          routePage: _CategoryRoutePages.seven_chakras_categories_screen
      ),
    ];
  }
}

class _ColorItems{
  static const Color careerColor = Colors.lightBlue;
  static const Color healthColor = Colors.red;
  static const Color moneyColor = Colors.green;
  static const Color loveColor = Colors.pinkAccent;
  static const Color anxietyColor = Colors.white70;
  static const Color chakraColor = Colors.deepPurpleAccent;
}

class _CategoryRoutePages{
  static const SuccessAffirmationScreen success_screen = SuccessAffirmationScreen();
  static const HealthAffirmationScreen health_screen = HealthAffirmationScreen();
  static const MoneyAffirmationScreen money_screen = MoneyAffirmationScreen();
  static const LoveAffirmationScreen love_screen = LoveAffirmationScreen();
  static const AnxietyAffirmationScreen anxiety_screen = AnxietyAffirmationScreen();
  static SevenChakrasCategoriesScreen seven_chakras_categories_screen = SevenChakrasCategoriesScreen();
}
