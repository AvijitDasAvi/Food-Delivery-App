import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/login_page.dart';
import 'package:food_delivery_app/widgets/widget_support.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _obsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 245, 110, 73),
                    Color.fromARGB(255, 228, 57, 5),
                  ],
                ),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    30.0,
                  ),
                  topRight: Radius.circular(
                    30.0,
                  ),
                ),
              ),
              child: Text(''),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 30.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      "images/logo.png",
                      width: MediaQuery.of(context).size.width / 1.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Sign Up",
                            style: AppWidget.headlineTextFieldStyle(),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Name",
                              hintStyle: AppWidget.semiBoldTextFieldStyle(),
                              prefixIcon: Icon(Icons.person_outlined),
                              prefixIconColor: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: AppWidget.semiBoldTextFieldStyle(),
                              prefixIcon: Icon(Icons.person_outline),
                              prefixIconColor: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            obscureText: _obsecure,
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: AppWidget.semiBoldTextFieldStyle(),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _obsecure = !_obsecure;
                                    });
                                  },
                                  icon: Icon(_obsecure
                                      ? Icons.visibility
                                      : Icons.visibility_off)),
                              prefixIcon: const Icon(Icons.password_outlined),
                              prefixIconColor:
                                  const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Color.fromARGB(255, 228, 57, 5),
                              ),
                              child: Center(
                                child: Text(
                                  "SIGN UP",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Already have an account? Login",
                      style: AppWidget.semiBoldTextFieldStyle(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
