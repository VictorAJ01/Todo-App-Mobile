class OnboardingContent {
  String image;
  String title;
  String description;

  OnboardingContent(
      {required this.image, required this.title, required this.description});
}

List<OnboardingContent> contents = [
  OnboardingContent(
      image: 'images/onboarding-image-1.png',
      title: 'Manage your tasks',
      description:
          "You can easily manage all of your daily tasks in DoMe for free"),
  OnboardingContent(
      image: 'images/onboarding-image-2.png',
      title: 'Create daily routine',
      description:
          "In Uptodo  you can create your personalized routine to stay productive"),
  OnboardingContent(
      image: 'images/onboarding-image-3.png',
      title: 'Organize your tasks',
      description:
          "You can organize your daily tasks by adding your tasks into separate categories"),
];
