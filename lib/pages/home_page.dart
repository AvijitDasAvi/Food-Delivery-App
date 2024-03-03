import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/details_page.dart';
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
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            top: 25.0,
            left: 20.0,
          ),
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
                    margin: const EdgeInsets.all(20.0),
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
              Container(
                  margin: const EdgeInsets.only(
                    right: 20.0,
                  ),
                  child: variousItem()),
              const SizedBox(
                height: 30.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailsPage(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(4.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  "images/salad2.png",
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(height: 5.0),
                                Text(
                                  "Veggie Taco Hash",
                                  style: AppWidget.semiBoldTextFieldStyle(),
                                ),
                                const SizedBox(height: 5.0),
                                Text(
                                  "Fresh & Healthy",
                                  style: AppWidget.lightTextFieldStyle(),
                                ),
                                const SizedBox(height: 5.0),
                                Text(
                                  "\$25",
                                  style: AppWidget.semiBoldTextFieldStyle(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        margin: const EdgeInsets.all(4.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  "images/salad2.png",
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(height: 5.0),
                                Text(
                                  "Mix Veg Salad",
                                  style: AppWidget.semiBoldTextFieldStyle(),
                                ),
                                const SizedBox(height: 5.0),
                                Text(
                                  "Spicy with Onion",
                                  style: AppWidget.lightTextFieldStyle(),
                                ),
                                const SizedBox(height: 5.0),
                                Text(
                                  "\$25",
                                  style: AppWidget.semiBoldTextFieldStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        margin: const EdgeInsets.all(4.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  "images/salad2.png",
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(height: 5.0),
                                Text(
                                  "Veggie Taco Hash",
                                  style: AppWidget.semiBoldTextFieldStyle(),
                                ),
                                const SizedBox(height: 5.0),
                                Text(
                                  "Fresh & Healthy",
                                  style: AppWidget.lightTextFieldStyle(),
                                ),
                                const SizedBox(height: 5.0),
                                Text(
                                  "\$25",
                                  style: AppWidget.semiBoldTextFieldStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsets.only(right: 20.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "images/salad2.png",
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "Mediterranean Chickpea Salad",
                                style: AppWidget.semiBoldTextFieldStyle(),
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "Honey goot cheese",
                                style: AppWidget.lightTextFieldStyle(),
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "\$15",
                                style: AppWidget.semiBoldTextFieldStyle(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget variousItem() {
    return Row(
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
    );
  }
}
