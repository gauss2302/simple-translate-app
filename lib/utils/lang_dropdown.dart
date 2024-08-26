import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LangDropdown extends StatefulWidget {
  final ValueChanged<String?> onLangChanged;

  const LangDropdown({super.key, required this.onLangChanged});

  @override
  State<LangDropdown> createState() => _LangDropdownState();
}

class _LangDropdownState extends State<LangDropdown> {
  List<Map<String, String>> languageData = [
    {'countryLanguage': 'English - US', 'countryImage': 'assets/img/usa.png'},
    {
      'countryLanguage': 'English - UK',
      'countryImage': 'assets/img/britain.png'
    },
    {'countryLanguage': 'Russian', 'countryImage': 'assets/img/russia.png'},
    {'countryLanguage': 'Italian', 'countryImage': 'assets/img/italy.png'},
    {'countryLanguage': 'German', 'countryImage': 'assets/img/germany.png'},
    {'countryLanguage': 'French', 'countryImage': 'assets/img/france.png'},
    {'countryLanguage': 'Spanish', 'countryImage': 'assets/img/spain.png'},
  ];

  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xFFFFFFFF),
          border: Border.all(
              color: const Color(0xFF6D1B7B).withOpacity(0.8), width: 0.2)),
      child: DropdownButton<String>(
          value: selectedCountry,
          hint: Text(
            "Select Langugae",
            style: GoogleFonts.poppins(
                fontSize: 14, color: const Color(0xFF000000)),
          ),
          icon: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: const Color(0xFF6D1B7B).withOpacity(0.3),
            ),
          ),
          underline: Container(
            color: Colors.transparent,
          ),
          dropdownColor: const Color(0xFFFFFFFF),
          items: languageData.map((country) {
            return DropdownMenuItem<String>(
                value: country['countryLanguage'],
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        country['countryImage']!,
                        height: 20,
                        width: 20,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      country['countryLanguage']!,
                      style: GoogleFonts.poppins(
                        fontSize: 14.0,
                        color: selectedCountry == country['countryLanguage']
                            ? const Color(0xFF000000)
                            : const Color(0xFF6D1B7B).withOpacity(0.8),
                      ),
                    ),
                  ],
                ));
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedCountry = value;
            });
            widget.onLangChanged(value);
          }),
    );
  }
}
