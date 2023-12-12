import 'package:flutter/material.dart';
import 'package:uniliver/Pages/HomePage/homepage.dart';
import 'package:uniliver/Pages/RegisterPage/registerPage.dart';
import 'package:uniliver/Resusable%20componets/customTextField.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD3E4F2),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Log in",
                      style: GoogleFonts.playfairDisplay(
                          fontWeight: FontWeight.w400, fontSize: 68),
                    ),
                  ),
                ],
              ),
              FractionallySizedBox(
                widthFactor: 0.9,
                child: Container(
                  color: Color(0x1E1E1E38),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Text(
                                "E-mail",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 23,
                                ),
                              ),
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
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Text(
                                "Password",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 23,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      CustomTextFeild(
                        labelText: "Enter Password",
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: GestureDetector(
                          child: Container(
                            width: 229,
                            height: 51,
                            child: Center(
                              child: Text(
                                "Sign in",
                                style: GoogleFonts.playfairDisplay(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xff2D85CC),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/line_1.png"),
                          Text(
                            "OR",
                            style: GoogleFonts.inriaSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 23,
                                color: Colors.white),
                          ),
                          Image.asset("assets/images/line_1.png"),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Container(
                          width: 321,
                          height: 64,
                          child: Center(
                              child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Image.asset(
                                    "assets/images/google_logo.png"),
                              ),
                              Text(
                                "Continue with Google",
                                style: GoogleFonts.inriaSans(
                                    fontWeight: FontWeight.w700, fontSize: 21),
                              ),
                            ],
                          )),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          width: 321,
                          height: 64,
                          child: Center(
                              child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Image.asset(
                                    "assets/images/facebook_logo.png"),
                              ),
                              Text(
                                "Continue with Facebook",
                                style: GoogleFonts.inriaSans(
                                    fontWeight: FontWeight.w700, fontSize: 21),
                              ),
                            ],
                          )),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Text(
                          "Forgot your password?",
                          style: GoogleFonts.inriaSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 23,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Dont't have an account?",
                              style: GoogleFonts.inriaSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 23,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            GestureDetector(
                              child: Text(
                                "Sign Up",
                                style: GoogleFonts.inriaSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 23,
                                    color: Colors.white),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterPage()));
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
