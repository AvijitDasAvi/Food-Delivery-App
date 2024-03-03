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
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "Chickpeas are high in fiber, protein, and healthy fats and have a low GI. Potential benefits of chickpeas include helping control blood sugar, manage weight, and support heart and gut health. Chickpeas are versatile, so you can add them to many savory or sweet meals and snacks.",
              style: AppWidget.lightTextFieldStyle(),
              textAlign: TextAlign.justify,
              maxLines: 3,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text(
                  "Delivery Time",
                  style: AppWidget.semiBoldTextFieldStyle(),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                const Icon(
                  Icons.alarm,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  "30 min",
                  style: AppWidget.semiBoldTextFieldStyle(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
