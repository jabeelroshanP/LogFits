import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logfits/screens/used_or_new/used_or_new.dart';
import 'package:logfits/screens/login/login.dart';
import 'package:logfits/widgets/textWdgt.dart';
import 'package:logfits/widgets/textfieldWdgt.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/register.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment.centerRight,
                    colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: constraints.maxHeight * 0.04),
                        textWdgt(
                          "Sign\nUp", 
                          GoogleFonts.inriaSerif(
                            color: Colors.white,
                            fontSize: constraints.maxWidth < 400 ? 50 : 60,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                         TextFieldWdgt("Username"),
                         TextFieldWdgt("Email"),
                         TextFieldWdgt("Password"),
                         TextFieldWdgt("Confirm Password"),
                        SizedBox(height: constraints.maxHeight * 0.03),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context, 
                                MaterialPageRoute(
                                  builder: (context) => HomePage()
                                ),
                              );
                            },
                            child: textWdgt(
                              "Sign Up",
                              GoogleFonts.inter(
                                color: const Color(0xFF363634),
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                height: 2.7,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.white54,
                                thickness: 2,
                                indent: constraints.maxWidth * 0.2,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "or",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.white54,
                                thickness: 2,
                                endIndent: constraints.maxWidth * 0.2,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Image.asset('assets/g.webp', height: 45),
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Image.asset('assets/fb.png', height: 40),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: Text.rich(
                            TextSpan(
                              text: 'Already have an account? ',
                              style: GoogleFonts.inter(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Sign In',
                                  style: GoogleFonts.inter(
                                    color: const Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushReplacement(
                                        context, 
                                        MaterialPageRoute(
                                          builder: (context) => LoginPage()
                                        ),
                                      );
                                    }
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}