import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:food_delivery_app/pages/onboard_page.dart';
import 'package:food_delivery_app/pages/wallet_page.dart';
import 'package:food_delivery_app/widgets/app_constant.dart';

void main() async {
  Stripe.publishableKey = publishableKey;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyALrWwhZCeDjaaQJFMq4OBWl0wFtw0KYMI",
          appId: "1:678359249917:web:f723ff36a2078995c05f94",
          messagingSenderId: "678359249917",
          projectId: "food-delivery-app-8b2f7"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FOODIE",
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("Error");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return WalletPage();
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
