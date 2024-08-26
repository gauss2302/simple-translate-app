import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils/lang_dropdown.dart';

class PromtScreen extends StatefulWidget {
  final VoidCallback showHomeScreen;
  const PromtScreen({super.key, required this.showHomeScreen});

  @override
  State<PromtScreen> createState() => _PromtScreenState();
}

class _PromtScreenState extends State<PromtScreen> {
  String? selectedCountry;

  void _changeRequiredLangugage(String? newCountry) {
    setState(() {
      selectedCountry = newCountry;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: const Color(0xFF6D1B7B).withOpacity(0.8),
                width: 0.3,
              ))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Text to Translate",
                    style: GoogleFonts.poppins(
                      fontSize: 19.0,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xFF000000),
                    ),
                  ),
                  const Icon(
                    Icons.text_fields,
                    color: Color(0xFF000000),
                    size: 24.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LangDropdown(
                    onLangChanged: _changeRequiredLangugage,
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
