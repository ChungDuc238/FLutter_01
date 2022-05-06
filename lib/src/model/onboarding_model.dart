class Onboarding {
  String title;
  String image;
  String description;
  Onboarding(
      {required this.title, required this.image, required this.description});
}

List<Onboarding> onboardingList = [
  Onboarding(
      title: 'Proven\n specialists',
      image: 'assets/images/img_onboarding_01.png',
      description: 'We check each specialist before he starts work'),
  Onboarding(
      title: 'Honest\n ratings',
      image: 'assets/images/img_onboarding_02.png',
      description: 'We carefully check each specialist and put honest ratings'),
  Onboarding(
      title: 'Insured\n orders',
      image: 'assets/images/img_onboarding_03.png',
      description: 'We insure each order for the amount of 500'),
  Onboarding(
      title: 'Create\n order',
      image: 'assets/images/img_onboarding_04.png',
      description: 'It\'s easy, just click on the plus'),
];
