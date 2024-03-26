import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/widget_support.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: 10.0,
        ),
        child: Column(
          children: [
            Material(
              elevation: 2.0,
              child: Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Center(
                  child: Text(
                    "Wallet",
                    style: AppWidget.headlineTextFieldStyle(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xFFF2F2F2)),
              child: Row(
                children: [
                  Image.asset(
                    "images/wallet.png",
                    height: 60.0,
                    width: 60.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
