import 'package:flutter/material.dart';
import 'package:pd/confirm.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectScreen extends StatefulWidget {
  @override
  _SelectScreenState createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  List<String> topics = [
    "AI",
    "System Design",
    "OOP",
    "Data Structures & Algorithms (DSA)",
    "Time & Space Complexity Analysis",
    "Database Management Systems",
    "Operating Systems (OS)",
    "Networking Fundamentals",
    "Software Development Life Cycle (SDLC)",
    "Version Control Systems (VCS)",
    "Problem-Solving Skills",
    "Communication Skills",
    "Teamwork",
    "Resume & Cover Letter Writing",
    "Technical Interview Preparation",
    "Algorithmic Problem Solving",
    "Graph Algorithms",
    "Greedy Algorithms",
    "Dynamic Programming",
  ];

  Set<String> selectedTopics = {};

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final bool isMobile = screenWidth < 600;

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Row(
          children: [
            Expanded(
              child: Text('Preferences',
                  style: GoogleFonts.nunito(
                    fontSize: isMobile ? 18 : 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Select your topic of',
                            style: GoogleFonts.nunito(
                              fontSize: isMobile ? 24 : 32,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 65, 78, 202),
                            )),
                        Text('Interest🔖',
                            style: GoogleFonts.nunito(
                              fontSize: isMobile ? 24 : 32,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 65, 78, 202),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              Text(
                  'Select topic of interest for better recommendations, or you can skip it',
                  style: GoogleFonts.nunito(
                    fontSize: isMobile ? 16 : 20,
                    color: Color.fromARGB(255, 65, 78, 202),
                  )),
              SizedBox(height: screenHeight * 0.02),
              Expanded(
                child: SingleChildScrollView(
                  child: Wrap(
                    spacing: 8.0,
                    runSpacing: 8.0,
                    children: topics.map((topic) {
                      return ChoiceChip(
                        label: Text(topic,
                            style: GoogleFonts.nunito(
                              fontSize: isMobile ? 14 : 18,
                              color: Color.fromARGB(255, 65, 78, 202),
                            )),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                            color: Color.fromARGB(255, 65, 78, 202),
                          ),
                        ),
                        selected: selectedTopics.contains(topic),
                        onSelected: (selected) {
                          setState(() {
                            if (selected) {
                              selectedTopics.add(topic);
                            } else {
                              selectedTopics.remove(topic);
                            }
                          });
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            ConfirmScreen(),
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
                    backgroundColor: Color.fromARGB(255, 197, 202, 250),
                  ),
                  child: Text('Skip',
                      style: GoogleFonts.nunito(
                          fontSize: isMobile ? 16 : 20,
                          color: Color.fromARGB(255, 65, 78, 202))),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            ConfirmScreen(),
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
                  ),
                  child: Text('Continue',
                      style: GoogleFonts.nunito(
                          fontSize: isMobile ? 16 : 20,
                          color: Color.fromARGB(255, 255, 255, 255))),
                ),
              ]),
            ],
          )),
    );
  }
}
