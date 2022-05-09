import 'package:bootcamp_aff_app/models/categories_model.dart';
import 'package:bootcamp_aff_app/screens/anxiety_screen.dart';
import 'package:bootcamp_aff_app/screens/chakra_screen.dart';
import 'package:bootcamp_aff_app/screens/health_screen.dart';
import 'package:bootcamp_aff_app/screens/love_screen.dart';
import 'package:bootcamp_aff_app/screens/money_screen.dart';
import 'package:bootcamp_aff_app/screens/success_screen.dart';
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
          name: "Para",
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
          routePage: _CategoryRoutePages.chakra_screen
      ),
    ];
  }
}

class _ColorItems{
  static final Color careerColor = Colors.lightBlue;
  static final Color healthColor = Colors.red;
  static final Color moneyColor = Colors.green;
  static final Color loveColor = Colors.pinkAccent;
  static final Color anxietyColor = Colors.white70;
  static final Color chakraColor = Colors.deepPurpleAccent;
}

class _CategoryRoutePages{
  static final SuccessScreen success_screen = SuccessScreen();
  static final HealthScreen health_screen = HealthScreen();
  static final MoneyScreen money_screen = MoneyScreen();
  static final LoveScreen love_screen = LoveScreen();
  static final AnxietyScreen anxiety_screen = AnxietyScreen();
  static final ChakraScreen chakra_screen = ChakraScreen();
}
