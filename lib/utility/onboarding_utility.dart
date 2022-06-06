import 'package:bootcamp_aff_app/models/onboarding_model.dart';

class OnboardingUtility{
  static List<OnboardingModel> getOnboardingModels(){
    return [
      OnboardingModel(
        image: 'assets/images/logosvg.svg',
        title: 'Hoş Geldin!',
        description: 'Kendini ve düşünce biçimini yeniden yapılandırmaya hazır mısın?'
        'Olumlama, belirli bir düşünce biçiminin beyne öğretilmesi amacıyla bilince ve bilinçaltına yönelik hazırlanan, kişinin yaşama ve olaylara bakış açısını pozitifyönde değiştirmeyi hedefleyen pozitif ve tekrar eden telkinlerdir.',
      ),
      OnboardingModel(
        image: 'assets/images/logosvg.svg',
        title: 'Open Mind ile neler yapabilirsin?',
        description: 'Open Mind ile 6 kategoride farklı olumlamalara erişebilir ve yaşama yönelik bakış açını değiştirebilirsin. 7 Çakra kategorisiyle birlikte 7 farklı çakranı düzenleyebilir ve hayatı daha pozitif yaşamaya başlayabilirsin. Ana ekranda uygulamaya her girdiğinde seni karşılayacak rastgele bir olumlamanın yanı sıra, kategori sayfasından farklı kategorilere ait olumlamalara erişebilirsin.',
      ),
      OnboardingModel(
        image: 'assets/images/logosvg.svg',
        title: 'Haydi hemen başla!',
        description: 'Evrene mesajını hazırla, bugün dünden daha iyi olsun.',
      ),
    ];
  }
}

