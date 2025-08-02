import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logfits/widgets/textWdgt.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isSmallScreen = constraints.maxWidth < 400;
          
          return Padding(
            padding: EdgeInsets.all(isSmallScreen ? 15.0 : 20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: isSmallScreen ? 25 : 35),
                  textWdgt(
                    "Shop\nBy Categories",
                    GoogleFonts.poppins(
                      fontSize: isSmallScreen ? 30 : 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Divider(
                    thickness: 3,
                    endIndent: constraints.maxWidth * 0.5,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(height: 15),
                  _buildFeatureRow(isSmallScreen),
                  const SizedBox(height: 20),
                  textWdgt(
                    "Your Style & Budget",
                    GoogleFonts.montserrat(
                      fontSize: isSmallScreen ? 18 : 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildProductCard('assets/1.png', isSmallScreen, isFirst: true),
                  const SizedBox(height: 15),
                  _buildProductCard('assets/2.png', isSmallScreen, isFirst: false),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildFeatureRow(bool isSmallScreen) {
    return Row(
      children: [
        Icon(
          Icons.chair_outlined,
          size: isSmallScreen ? 60 : 80,
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textWdgt(
              "50+\nUnique Products",
              GoogleFonts.poppins(
                fontSize: isSmallScreen ? 14 : 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildProductCard(String imagePath, bool isSmallScreen, {required bool isFirst}) {
    return SizedBox(
      height: isSmallScreen ? 150 : 180,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          isFirst ? settingContainer() : settingSecondContainer(),
          Positioned(
            top: -30,
            right: isSmallScreen ? -30 : -50,
            child: Image.asset(
              imagePath,
              height: isSmallScreen ? 150 : 180,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}

// Brand New Container Widget
Widget settingContainer() {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color.fromARGB(255, 120, 130, 100), Color(0xFFFFFFFF)],
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 10,
          offset: const Offset(0, 3),
        )
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 15, bottom: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWdgt(
            "Completely unused, Fresh\nand in Perfect condition.",
            GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          textWdgt(
            "Brand New ❯❯",
            GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}

// Gently Used Container Widget
Widget settingSecondContainer() {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFFA2AD8A), Color(0xFFFFFFFF)],
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 10,
          offset: const Offset(0, 3),
        )
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Fresh-look refurbished\nfurniture with style\nand strength.",
            textAlign: TextAlign.right,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Gently Used ❯❯",
            textAlign: TextAlign.right,
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}


// Filter Container

Widget filterContainer(String txt) {
  return SizedBox(
    height: 35,
    child: ElevatedButton(
      onPressed: () {
        // Add your filter logic here
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFA2AD8A),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        elevation: 0, 
      ),
      child: Text(
        txt,
        style: GoogleFonts.inder(
          fontSize: 14,
        ),
      ),
    ),
  );
}
