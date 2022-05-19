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

}