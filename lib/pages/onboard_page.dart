import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/signup_page.dart';
import 'package:food_delivery_app/widgets/content_model.dart';
import 'package:food_delivery_app/widgets/widget_support.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  int currentIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Image.asset(
                        contents[i].image,
                        height: 245,
                        width: MediaQuery.of(context).size.width / 1.8,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      Text(
                        contents[i].title,
                        style: AppWidget.semiBoldTextFieldStyle(),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        contents[i].discription,
                        style: AppWidget.lightTextFieldStyle(),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    contents.length, (index) => buildDot(index, context))),
          ),
          GestureDetector(
            onTap: () {
              if (currentIndex == contents.length - 1) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignupPage(),
                  ),
                );
              }
              _pageController.nextPage(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceIn);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: 60.0,
              width: double.infinity,
              margin: const EdgeInsets.all(40),
              child: Center(
                child: Text(
                  currentIndex == contents.length - 1 ? "Start" : "Next",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10.0,
      width: currentIndex == index ? 18 : 7,
      margin: const EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: Colors.black38,
      ),
    );
  }
}
