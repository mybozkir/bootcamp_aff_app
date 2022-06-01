import 'package:bootcamp_aff_app/models/affirmation_model.dart';
import 'package:bootcamp_aff_app/data/affirmation_data.dart';
import 'package:flutter/material.dart';


class AffirmationsUtility{
  static final AffirmationModelNB success_affirmations = AffirmationModelNB(
      name: 'Başarı ve Kariyer',
      imageName: 'main_page_images/anaekrankart11.jpg',
      color: Color(0xFFFFF5F5),
      list: AffirmationData.successAffirmationsShuffled,
  );
  static final AffirmationModelNB anxiety_affirmations = AffirmationModelNB(
    name: 'Stres & Anksiyete',
    imageName: 'main_page_images/anaekrankart9.jpg',
    color: Color(0xFFFFF5F5),
    list: AffirmationData.anxietyAffirmationsShuffled,
  );
  static final AffirmationModelNB health_affirmations = AffirmationModelNB(
    name: 'Sağlık',
    imageName: 'main_page_images/anaekrankart5.jpg',
    color: Color(0xFFFFF5F5),
    list: AffirmationData.healthAffirmationsShuffled,
  );
  static final AffirmationModelNB love_affirmations = AffirmationModelNB(
    name: 'Aşk & İlişkiler',
    imageName: 'main_page_images/anaekrankart7.jpg',
    color: Color(0xFFFFF5F5),
    list: AffirmationData.loveAffirmationsShuffled,
  );
  static final AffirmationModelNB money_affirmations = AffirmationModelNB(
    name: 'Bolluk & Bereket',
    imageName: 'main_page_images/anaekrankart6.jpg',
    color: Color(0xFFFFF5F5),
    list: AffirmationData.moneyAffirmationsShuffled,
  );
  static final AffirmationModel solar_plexus_chakra_affirmations = AffirmationModel(
      name: 'Solar Plexus Çakrası',
      imageName: 'seven_chakras_images/card_background/solarplexus_cb.jpg',
      backgroundImageName: 'seven_chakras_images/background/solar_plexus_chakra_background.jpg',
      list: AffirmationData.chakraSolarPlexusAffirmationsShuffled,
  );
  static final AffirmationModel sacral_chakra_affirmations = AffirmationModel(
      name: 'Sakral Çakra',
      imageName: 'seven_chakras_images/card_background/sacral_cb.jpg',
      backgroundImageName: 'seven_chakras_images/background/sacral_chakra_background.jpg',
      list: AffirmationData.chakraSacralAffirmationsShuffled,
  );
  static final AffirmationModel root_chakra_affirmations = AffirmationModel(
      name: 'Kök Çakrası',
      imageName: 'seven_chakras_images/card_background/root_cb.jpg',
      backgroundImageName: 'seven_chakras_images/background/root_chakra_background.jpg',
      list: AffirmationData.chakraRootAffirmationsShuffled,
  );
  static final AffirmationModel crown_chakra_affirmations = AffirmationModel(
      name: 'Taç Çakra',
      imageName: 'seven_chakras_images/card_background/crown_cb.jpg',
      backgroundImageName: 'seven_chakras_images/background/crown_chakra_background.jpg',
      list: AffirmationData.chakraCrownAffirmationsShuffled,
  );
  static final AffirmationModel heart_chakra_affirmations = AffirmationModel(
      name: 'Kalp Çakrası',
      imageName: 'seven_chakras_images/card_background/heart_cb.jpg',
      backgroundImageName: 'seven_chakras_images/background/heart_chakra_background.jpg',
      list: AffirmationData.chakraHeartAffirmationsShuffled,
  );
  static final AffirmationModel third_eye_chakra_affirmations = AffirmationModel(
      name: 'Üçüncü Göz Çakrası',
      imageName: 'seven_chakras_images/card_background/thirdeye_cb.jpg',
      backgroundImageName: 'seven_chakras_images/background/third_eye_background.jpg',
      list: AffirmationData.chakraThirdEyeAffirmationsShuffled,
  );
  static final AffirmationModel throat_chakra_affirmations = AffirmationModel(
      name: 'Bogaz Çakrası',
      imageName: 'seven_chakras_images/card_background/throat_cb.jpg',
      backgroundImageName: 'seven_chakras_images/background/throat_chakra_background.jpg',
      list: AffirmationData.chakraThroatAffirmationsShuffled,
  );

}