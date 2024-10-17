import 'package:flutter/material.dart';
import 'package:pd/mainfeed.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmScreen extends StatelessWidget {
  ConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final bool isMobile = screenSize.width < 600;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/man.gif",
                    width: isMobile ? screenSize.width * 0.6 : 240,
                    height: isMobile ? screenSize.width * 0.4 : 160,
                  ),
                  SizedBox(height: isMobile ? 15 : 20),
                  Text("You're all Set to Go!",
                      style: GoogleFonts.nunito(
                        fontSize: isMobile ? 18 : 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 65, 78, 202),
                      )),
                  SizedBox(height: isMobile ? 8 : 10),
                  Text("Now You Can Explore",
                      style: GoogleFonts.nunito(
                        fontSize: isMobile ? 14 : 12,
                        color: const Color.fromARGB(255, 65, 78, 202),
                      )),
                  SizedBox(height: isMobile ? 8 : 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Feeds by ShareInfo",
                          style: GoogleFonts.nunito(
                            fontSize: isMobile ? 14 : 12,
                            color: Colors.orange,
                          )),
                      SizedBox(width: isMobile ? 3 : 5),
                      Text("for",
                          style: GoogleFonts.nunito(
                            color: Color.fromARGB(255, 65, 78, 202),
                          )),
                      SizedBox(width: isMobile ? 3 : 5),
                      Text("FREE!",
                          style: GoogleFonts.nunito(
                            color: Colors.grey,
                          )),
                    ],
                  ),
                  SizedBox(height: isMobile ? 20 : 30),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width *
                (MediaQuery.of(context).size.width < 600 ? 0.8 : 0.3),
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height < 600 ? 20 : 30,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        MainFeed(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      var begin = 0.0;
                      var end = 1.0;
                      var tween = Tween(begin: begin, end: end);
                      var fadeAnimation = animation.drive(tween);

                      return FadeTransition(
                        opacity: fadeAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 65, 78, 202),
                  padding: EdgeInsets.symmetric(
                    vertical:
                        MediaQuery.of(context).size.height < 600 ? 12 : 16,
                    horizontal:
                        MediaQuery.of(context).size.width < 600 ? 24 : 32,
                  ),
                  textStyle: GoogleFonts.nunito(
                    fontSize: MediaQuery.of(context).size.width < 600 ? 16 : 20,
                  )),
              child: Text('Get started',
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
