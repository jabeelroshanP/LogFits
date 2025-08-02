import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Getstart extends StatelessWidget {
  const Getstart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F4EC),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Expanded(
                flex: 8,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/starting.png'),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36), 
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Container(
                      height: 65, 
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 108, 116, 89),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      alignment: Alignment.center,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 2,
                      child: Container(
                        height: 56,
                        width: 56, 
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 4,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.chevron_right_sharp,
                          size: 32, 
                          color: const Color.fromARGB(255, 108, 116, 89),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              SizedBox(height: constraints.maxHeight * 0.05),
            ],
          );
        },
      ),
    );
  }
}