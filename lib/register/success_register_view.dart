import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:social_media_flutter/main_navigation/main_navigation_view.dart';

class SuccessRegisterView extends StatelessWidget {
  const SuccessRegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icon/success.png",
                  width: 120.0,
                  height: 120.0,
                  fit: BoxFit.fill,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Successfully\n',
                        style: GoogleFonts.poppins(
                          fontSize: 29,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'created an account\n',
                        style: GoogleFonts.poppins(
                          fontSize: 29,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text:
                            'After this you can explore any place you\nwant enjoy it!',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 202,
                ),
                Container(
                  height: 72,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainNavigationView()),
                      );
                    },
                    child: const Text(
                      "Let’s Explore",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
