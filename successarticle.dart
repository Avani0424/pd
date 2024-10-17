import 'package:flutter/material.dart';
import 'package:pd/mainfeed.dart';
import 'package:google_fonts/google_fonts.dart';

class Successarticle extends StatelessWidget {
  Successarticle({super.key});

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
                    "assets/images/success.gif",
                    width: isMobile ? screenSize.width * 0.7 : 280,
                    height: isMobile ? screenSize.width * 0.5 : 200,
                  ),
                  SizedBox(height: isMobile ? 10 : 15),
                  Text("SUCCESSFULLY",
                      style: GoogleFonts.nunito(
                        fontSize: isMobile ? 18 : 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 65, 78, 202),
                      )),
                  SizedBox(height: isMobile ? 5 : 8),
                  Text("PUBLISHED",
                      style: GoogleFonts.nunito(
                        fontSize: isMobile ? 16 : 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 65, 78, 202),
                      )),
                  SizedBox(height: isMobile ? 5 : 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("We've Added",
                          style: GoogleFonts.nunito(
                            fontSize: isMobile ? 13 : 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 65, 78, 202),
                          )),
                      SizedBox(width: isMobile ? 3 : 5),
                    ],
                  ),
                  SizedBox(height: isMobile ? 5 : 8),
                  Text("20 credits",
                      style: GoogleFonts.nunito(
                        fontSize: isMobile ? 22 : 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      )),
                  SizedBox(height: isMobile ? 5 : 8),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: "in Your ",
                            style: GoogleFonts.nunito(
                              fontSize: isMobile ? 13 : 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 65, 78, 202),
                            )),
                        TextSpan(
                            text: "ShareInfo",
                            style: GoogleFonts.nunito(
                              fontSize: isMobile ? 13 : 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            )),
                        TextSpan(
                            text: " Wallet",
                            style: GoogleFonts.nunito(
                              fontSize: isMobile ? 13 : 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 65, 78, 202),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: isMobile ? 10 : 15),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.send, color: Color.fromARGB(255, 65, 78, 202)),
              SizedBox(width: 5),
              Text("Share your article",
                  style: GoogleFonts.nunito(
                    fontSize: isMobile ? 16 : 20,
                    color: Color.fromARGB(255, 65, 78, 202),
                    decoration: TextDecoration.underline,
                  )),
            ],
          ),
          SizedBox(height: isMobile ? 10 : 15),
          Container(
            width: isMobile ? screenSize.width * 0.8 : 290,
            margin: EdgeInsets.only(bottom: isMobile ? 20 : 30),
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
                  backgroundColor: Color.fromARGB(255, 65, 78, 202),
                  padding: EdgeInsets.symmetric(
                    vertical: isMobile ? 12 : 16,
                    horizontal: isMobile ? 24 : 32,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  textStyle: GoogleFonts.nunito(
                    fontSize: isMobile ? 16 : 20,
                  )),
              child: Text('Explore ShareInfo Wallet',
                  style: GoogleFonts.nunito(
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
