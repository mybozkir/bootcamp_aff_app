import 'package:bootcamp_aff_app/models/onboarding_model.dart';

class OnboardingUtility{
  static List<OnboardingModel> getOnboardingModels(){
    return [
      OnboardingModel(
        image: 'assets/deneme.svg',
        title: 'Sayfa 1',
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
            ' Aenean aliquet massa justo, nec hendrerit ipsum laoreet a. Etiam non neque bibendum, blandit libero at, ornare purus.'
            ' Vivamus in elit congue, sagittis lacus vel, vestibulum erat.',
      ),
      OnboardingModel(
        image: 'assets/deneme.svg',
        title: 'Sayfa 2',
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
            ' Aenean aliquet massa justo, nec hendrerit ipsum laoreet a. Etiam non neque bibendum, blandit libero at, ornare purus.'
            ' Vivamus in elit congue, sagittis lacus vel, vestibulum erat.',
      ),
      OnboardingModel(
        image: 'assets/deneme.svg',
        title: 'Sayfa 3',
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
            ' Aenean aliquet massa justo, nec hendrerit ipsum laoreet a. Etiam non neque bibendum, blandit libero at, ornare purus.'
            ' Vivamus in elit congue, sagittis lacus vel, vestibulum erat.',
      ),
    ];
  }
}

