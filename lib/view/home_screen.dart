import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/view/countries_screen.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback showPromptScreen;
  const HomeScreen({super.key, required this.showPromptScreen});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/img/worldmap.png")),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 80.0, left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                child: Center(
                  child: CountryScreen(),
                ),
              ),
              Expanded(
                  child: Column(
                children: [
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: GoogleFonts.poppins(
                          height: 1.6,
                        ),
                        children: <InlineSpan>[
                          const TextSpan(
                              text: "Translate",
                              style: TextStyle(
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF000000),
                              )),
                          TextSpan(
                              text: "Every \n",
                              style: TextStyle(
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF6D1B7B).withOpacity(0.3),
                              )),
                          const TextSpan(
                            text: 'Type Word \n',
                            style: TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF000000),
                            ),
                          ),
                          const WidgetSpan(
                            child: SizedBox(height: 35.0),
                          ),
                          const TextSpan(
                            text: 'Help You Communicate In \n',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF000000),
                            ),
                          ),
                          const TextSpan(
                            text: 'Different Languages',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      )),
                  Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: GestureDetector(
                        onTap: widget.showPromptScreen,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color(0xFF6D1B7B).withOpacity(0.3),
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            height: 50,
                            width: 50,
                            padding: const EdgeInsets.all(2),
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: const Color(0xFF6D1B7B).withOpacity(0.3),
                              ),
                            ),
                          ),
                        ),
                      ))
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
