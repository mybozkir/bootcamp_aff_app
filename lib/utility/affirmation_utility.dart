import 'package:bootcamp_aff_app/models/affirmation_model.dart';
import 'package:bootcamp_aff_app/data/affirmation_data.dart';


class AffirmationsUtility{
  static final AffirmationModel success_affirmations = AffirmationModel(
      name: 'Başarı ve Kariyer',
      imageName: 'nature_images/nature6.jpg',
      backgroundImageName: 'nature_images/nature1.jpg',
      list: AffirmationData.successAffirmationsShuffled,
  );
  static final AffirmationModel anxiety_affirmations = AffirmationModel(
    name: 'Stres & Anksiyete',
    imageName: 'nature_images/nature10.jpg',
    backgroundImageName: 'nature_images/nature5.jpg',
    list: AffirmationData.anxietyAffirmationsShuffled,
  );
  static final AffirmationModel health_affirmations = AffirmationModel(
    name: 'Sağlık',
    imageName: 'nature_images/nature12.jpg',
    backgroundImageName: 'nature_images/nature13.jpg',
    list: AffirmationData.healthAffirmationsShuffled,
  );
  static final AffirmationModel love_affirmations = AffirmationModel(
    name: 'Aşk & İlişkiler',
    imageName: 'nature_images/nature9.jpg',
    backgroundImageName: 'nature_images/nature11.jpg',
    list: AffirmationData.loveAffirmationsShuffled,
  );
  static final AffirmationModel money_affirmations = AffirmationModel(
    name: 'Bolluk & Bereket',
    imageName: 'nature_images/nature7.jpg',
    backgroundImageName: 'nature_images/nature2.jpg',
    list: AffirmationData.moneyAffirmationsShuffled,
  );
  static final AffirmationModel solar_plexus_chakra_affirmations = AffirmationModel(
      name: 'Solar Plexus Chakra',
      imageName: 'seven_chakras_images/background/solar_plexus_chakra_background.jpg',
      backgroundImageName: 'seven_chakras_images/background/solar_plexus_chakra_background.jpg',
      list: AffirmationData.chakraSolarPlexusAffirmationsShuffled,
  );
  static final AffirmationModel sacral_chakra_affirmations = AffirmationModel(
      name: 'Sacral Chakra',
      imageName: 'seven_chakras_images/background/sacral_chakra_background.jpg',
      backgroundImageName: 'seven_chakras_images/background/sacral_chakra_background.jpg',
      list: AffirmationData.chakraSacralAffirmationsShuffled,
  );
  static final AffirmationModel root_chakra_affirmations = AffirmationModel(
      name: 'Root Chakra',
      imageName: 'seven_chakras_images/background/root_chakra_background.jpg',
      backgroundImageName: 'seven_chakras_images/background/root_chakra_background.jpg',
      list: AffirmationData.chakraRootAffirmationsShuffled,
  );
  static final AffirmationModel crown_chakra_affirmations = AffirmationModel(
      name: 'Crown Chakra',
      imageName: 'seven_chakras_images/background/crown_chakra_background.jpg',
      backgroundImageName: 'seven_chakras_images/background/crown_chakra_background.jpg',
      list: AffirmationData.chakraCrownAffirmationsShuffled,
  );
  static final AffirmationModel heart_chakra_affirmations = AffirmationModel(
      name: 'Heart Chakra',
      imageName: 'seven_chakras_images/background/heart_chakra_background.jpg',
      backgroundImageName: 'seven_chakras_images/background/heart_chakra_background.jpg',
      list: AffirmationData.chakraHeartAffirmationsShuffled,
  );
  static final AffirmationModel third_eye_chakra_affirmations = AffirmationModel(
      name: 'Third Eye Chakra',
      imageName: 'seven_chakras_images/background/third_eye_background.jpg',
      backgroundImageName: 'seven_chakras_images/background/third_eye_background.jpg',
      list: AffirmationData.chakraThirdEyeAffirmationsShuffled,
  );
  static final AffirmationModel throat_chakra_affirmations = AffirmationModel(
      name: 'Throat Chakra',
      imageName: 'seven_chakras_images/background/throat_chakra_background.jpg',
      backgroundImageName: 'seven_chakras_images/background/throat_chakra_background.jpg',
      list: AffirmationData.chakraThroatAffirmationsShuffled,
  );

}