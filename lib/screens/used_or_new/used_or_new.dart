import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logfits/brandNew/home/home.dart';
import 'package:logfits/gentlyUsed/home.dart';
import 'package:logfits/widgets/textWdgt.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFF5F4EC),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isSmallScreen = constraints.maxWidth < 400;

          return Padding(
            padding: EdgeInsets.all(isSmallScreen ? 15.0 : 20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: isSmallScreen ? 40 : 55),
                  textWdgt(
                    "Shop\nBy Categories",
                    GoogleFonts.poppins(
                      fontSize: isSmallScreen ? 35 : 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 25),
                  Divider(
                    thickness: 3,
                    endIndent: constraints.maxWidth * 0.6,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(height: 15),
                  _buildFeatureRow(isSmallScreen),
                  const SizedBox(height: 20),
                  textWdgt(
                    "Your Style & Budget",
                    GoogleFonts.montserrat(
                      fontSize: isSmallScreen ? 20 : 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildBrandNewCard(isSmallScreen,context),
                  const SizedBox(height: 15),
                  _buildGentlyUsedCard(isSmallScreen,context),
                  const SizedBox(height: 30),
                  textWdgt(
                    "Best Sales",
                    GoogleFonts.montserrat(
                      fontSize: isSmallScreen ? 20 : 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: 0.7,
                        ),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0x91B8B9AC),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                'assets/grid.png',
                                height: 150,
                                width: double.infinity,
                              ),
                            ),
                            const SizedBox(height: 12),
                             Text(
                              "Modern Chair",
                               style: GoogleFonts.montserrat(
                                     fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 Text(
                                  "\$50",
                                  style: GoogleFonts.montserrat(
                                     fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFA2AD8A),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "Add to cart",
                                    style: TextStyle(
                                      fontSize:  isSmallScreen ? 12 : 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
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
        Icon(Icons.chair_outlined, size: isSmallScreen ? 60 : 80),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textWdgt(
              "50+\nUnique Products",
              GoogleFonts.poppins(
                fontSize: isSmallScreen ? 17 : 19,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBrandNewCard(bool isSmallScreen,BuildContext context) {
    return SizedBox(
      height: isSmallScreen ? 150 : 180,
      child: InkWell(
     onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BrandNewHomePg(),)),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
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
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textWdgt(
                      "Completely unused, Fresh\nand in Perfect condition",
                      GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 8),
                    textWdgt(
                      "Brand New ❯",
                      GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -25,
              right: isSmallScreen ? -25 : -40,
              child: Image.asset(
                'assets/1.png',
                height: isSmallScreen ? 170 : 180,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGentlyUsedCard(bool isSmallScreen,context) {
    return SizedBox(
      height: isSmallScreen ? 150 : 180,
      child: InkWell(
         onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => GentlyUsedHomePg(),)),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xFFA2AD8A), Color(0xFFFFFFFF)],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 15, bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Fresh-look refurbished furniture\nwith style and strength",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Gently Used ❯",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 35,
              left: 10,
              child: Image.asset(
                'assets/chair.png',
                height: isSmallScreen ? 130 : 140,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
