import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/widget_support.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool pizza = false;
  bool burger = false;
  bool iceCream = false;
  bool salad = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello Avijit",
                    style: AppWidget.boldTextFieldStyle(),
                  ),
                  Container(
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0)),
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Delicious Food",
                style: AppWidget.headlineTextFieldStyle(),
              ),
              Text(
                "Discover and Get Great Food",
                style: AppWidget.lightTextFieldStyle(),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      pizza = true;
                      burger = false;
                      iceCream = false;
                      salad = false;
                      setState(() {});
                    },
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: pizza
                                ? const Color.fromARGB(255, 0, 255, 42)
                                : Colors.transparent,
                            width: 2.0,
                          ),
                          color: pizza ? Colors.black : Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          "images/pizza.png",
                          height: 40.0,
                          width: 40.0,
                          fit: BoxFit.cover,
                          color: pizza ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      pizza = false;
                      burger = true;
                      iceCream = false;
                      salad = false;
                      setState(() {});
                    },
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: burger
                                ? const Color.fromARGB(255, 0, 255, 42)
                                : Colors.transparent,
                            width: 2.0,
                          ),
                          color: burger ? Colors.black : Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          "images/burger.png",
                          height: 40.0,
                          width: 40.0,
                          fit: BoxFit.cover,
                          color: burger ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      pizza = false;
                      burger = false;
                      iceCream = true;
                      salad = false;
                      setState(() {});
                    },
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: iceCream
                                ? const Color.fromARGB(255, 0, 255, 42)
                                : Colors.transparent,
                            width: 2.0,
                          ),
                          color: iceCream ? Colors.black : Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          "images/ice-cream.png",
                          height: 40.0,
                          width: 40.0,
                          fit: BoxFit.cover,
                          color: iceCream ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      pizza = false;
                      burger = false;
                      iceCream = false;
                      salad = true;
                      setState(() {});
                    },
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: salad
                                ? const Color.fromARGB(255, 0, 255, 42)
                                : Colors.transparent,
                            width: 2.0,
                          ),
                          color: salad ? Colors.black : Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          "images/salad.png",
                          height: 40.0,
                          width: 40.0,
                          fit: BoxFit.cover,
                          color: salad ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
