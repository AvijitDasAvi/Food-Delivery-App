class OnboardingContent {
  String title;
  String image;
  String discription;
  OnboardingContent(
      {required this.discription, required this.image, required this.title});
}

List<OnboardingContent> contents = [
  OnboardingContent(
    discription: "Pick your food from our menu\n         More than 35 times",
    image: "images/screen1.png",
    title: "Select from our\n     Best menu",
  ),
  OnboardingContent(
    discription: "You can pay cash on delivery\n   Card payment is available",
    image: "images/screen2.png",
    title: "Easy and online payment",
  ),
  OnboardingContent(
    discription: "Delivery your food at your\n                 Doorstep",
    image: "images/screen3.png",
    title: "Quick delivery at Your Doorstep",
  )
];
