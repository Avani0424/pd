import 'package:flutter/material.dart';
import 'package:pd/mainfeed.dart';
import 'package:google_fonts/google_fonts.dart';

class NotFound extends StatelessWidget {
  NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
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
        ),
        title: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search something here...!',
              prefixIcon: const Icon(Icons.search, color: Colors.black),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: const Color.fromARGB(255, 243, 240, 240),
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("0 found",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 26, 04, 46),
                  fontSize: 18,
                )),
            const Spacer(),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/notfound.gif',
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 20),
                    Text("Not Found",
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          color: Color.fromARGB(255, 26, 04, 46),
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(height: 10),
                    Text(
                      "Sorry, the keyword you entered cannot be found.",
                      style: GoogleFonts.nunito(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Please check again or search with another",
                      style: GoogleFonts.nunito(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "keyword",
                      style: GoogleFonts.nunito(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
