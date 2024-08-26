import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({super.key});

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  final Random random = Random();

  final List<Map<String, String>> countryData = [
    {'countryName': 'USA', 'countryImage': 'assets/img/usa.png'},
    {'countryName': 'Russia', 'countryImage': 'assets/img/russia.png'},
    {'countryName': 'Italy', 'countryImage': 'assets/img/italy.png'},
    {'countryName': 'Germany', 'countryImage': 'assets/img/germany.png'},
    {'countryName': 'France', 'countryImage': 'assets/img/france.png'},
    {'countryName': 'China', 'countryImage': 'assets/img/china.png'},
    {'countryName': 'England', 'countryImage': 'assets/img/britain.png'},
    {'countryName': 'Ukraine', 'countryImage': 'assets/img/ukraine.png'},
  ];

  String? selectedCountry;
  Color? backgroundColor;

  @override
  void initState() {
    super.initState();
    _generateRandomColor();
  }

  void _generateRandomColor() {
    setState(() {
      selectedCountry =
          countryData[random.nextInt(countryData.length)]['countryName'];
      backgroundColor =
          Color((random.nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: RefreshIndicator(
        onRefresh: () async {
          _generateRandomColor();
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: countryData.map((country) {
              bool isSelected = country['countryName'] == selectedCountry;
              return Card(
                elevation: 4,
                color: isSelected ? backgroundColor : const Color(0xFFFFFFFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  side: BorderSide(
                      color: isSelected
                          ? Colors.transparent
                          : const Color(0xFF6D1B7B).withOpacity(0.8),
                      width: 0.4),
                ),
                child: Container(
                  width: 180.0,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        country['countryImage']!,
                        height: 20,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 8.0),
                      Text(country['countryName']!,
                          style: GoogleFonts.poppins(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300,
                            color: isSelected
                                ? const Color(0xFFFFFFFF)
                                : const Color(0xFF000000),
                          ),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
              );
            }).toList(), // Closing parenthesis for map and Wrap
          ),
        ),
      ),
    );
  }
}
