import 'package:flutter/material.dart';
import 'package:uniliver/Resusable%20componets/customTextField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Log in"),
                ),
              ],
            ),
            FractionallySizedBox(
              widthFactor: 0.9,
              child: Container(
                color: Colors.grey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Email",
                          ),
                        ),
                      ],
                    ),
                    CustomTextFeild(
                      labelText: "Enter E-mail",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Password",
                          ),
                        ),
                      ],
                    ),
                    CustomTextFeild(
                      labelText: "Enter Password",
                    ),
                    Container(
                      width: 229,
                      height: 51,
                      color: Color(0xff2D85CC),
                      child: Text(
                        "Sign in",
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset("assets/images/line_1.png"),
                        Text("OR"),
                        Image.asset("assets/images/line_1.png"),
                      ],
                    ),
                    Container(
                      width: 321,
                      height: 64,
                      color: Colors.white,
                      child: Center(
                          child: Row(
                        children: [
                          Image.asset("assets/images/google_logo.png"),
                          Text("Continue with Google"),
                        ],
                      )),
                    ),
                    Container(
                      width: 321,
                      height: 64,
                      color: Colors.white,
                      child: Center(
                          child: Row(
                        children: [
                          Image.asset("assets/images/facebook_logo.png"),
                          Text("Continue with Facebook"),
                        ],
                      )),
                    ),
                    Text("Forgor your password?"),
                    Text("Dont't have an account? Sign Up"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
