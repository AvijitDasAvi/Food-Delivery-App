import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/home_page.dart';
import 'package:food_delivery_app/widgets/widget_support.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            Center(
              child: Image.asset(
                "images/salad2.png",
                width: MediaQuery.of(context).size.width / 1.5,
                height: MediaQuery.of(context).size.height / 2,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mediterraneam",
                      style: AppWidget.semiBoldTextFieldStyle(),
                    ),
                    Text(
                      "Chickpea Salad",
                      style: AppWidget.boldTextFieldStyle(),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: IconButton(
                    icon: const Icon(Icons.remove),
                    color: Colors.white,
                    onPressed: () {
                      if (count > 1) {
                        count--;
                      }
                      setState(() {});
                    },
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text(
                  "$count",
                  style: AppWidget.semiBoldTextFieldStyle(),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: IconButton(
                    icon: const Icon(Icons.add),
                    color: Colors.white,
                    onPressed: () {
                      count++;
                      setState(() {});
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
