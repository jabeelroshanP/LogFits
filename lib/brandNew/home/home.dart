import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logfits/widgets/carousel.dart';
import 'package:logfits/widgets/home_widgets.dart';
import 'package:logfits/widgets/textfieldWdgt.dart';

class BrandNewHomePg extends StatelessWidget {
  const BrandNewHomePg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F4EC), // optional
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Discover Your Unique Styles",
                style: GoogleFonts.montserrat(
                  fontSize: 34,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextFieldWdgt(
                "Search...",
                Container(
                  child: Icon(Icons.search, color: Colors.white),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFA2AD8A),
                  ),
                ),
              ),
              carousel(),
              SizedBox(height: 25),
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    filterContainer("All"),
                    SizedBox(width: 10),
                    filterContainer("Chairs"),
                    SizedBox(width: 10),
                    filterContainer("Sofas"),
                    SizedBox(width: 10),
                    filterContainer("Cupboards"),
                    SizedBox(width: 10),
                    filterContainer("Doors"),
                    SizedBox(width: 10),
                    filterContainer("Tables"),
                    SizedBox(width: 10),
                    filterContainer("Window"),
                    SizedBox(width: 10),
                    filterContainer("Door Frame"),
                    SizedBox(width: 10),
                    filterContainer("Window Frame"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
