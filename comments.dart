import 'package:flutter/material.dart';
import 'package:pd/detailedarticle.dart';
import 'package:google_fonts/google_fonts.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  int _selectedButtonIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0.5,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    DetailArticle(),
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
        title: Row(
          children: [
            Text(
              "Comments(120)",
              style: GoogleFonts.nunito(
                fontSize: MediaQuery.of(context).size.width < 600 ? 16 : 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: const Color.fromARGB(255, 65, 78, 202),
              size: MediaQuery.of(context).size.width < 600 ? 24 : 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(screenWidth * 0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                _selectedButtonIndex = 0;
                              });
                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                color: Color.fromARGB(255, 65, 78, 202),
                              ),
                              backgroundColor: _selectedButtonIndex == 0
                                  ? const Color.fromARGB(255, 65, 78, 202)
                                  : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text("Top",
                                style: GoogleFonts.nunito(
                                  color: _selectedButtonIndex == 0
                                      ? Colors.white
                                      : const Color.fromARGB(255, 65, 78, 202),
                                  fontSize: screenWidth * 0.035,
                                )),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                _selectedButtonIndex = 1;
                              });
                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                color: Color.fromARGB(255, 65, 78, 202),
                              ),
                              backgroundColor: _selectedButtonIndex == 1
                                  ? const Color.fromARGB(255, 65, 78, 202)
                                  : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text("Newest",
                                style: GoogleFonts.nunito(
                                  color: _selectedButtonIndex == 1
                                      ? Colors.white
                                      : const Color.fromARGB(255, 65, 78, 202),
                                  fontSize: screenWidth * 0.035,
                                )),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                _selectedButtonIndex = 2;
                              });
                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                color: Color.fromARGB(255, 65, 78, 202),
                              ),
                              backgroundColor: _selectedButtonIndex == 2
                                  ? const Color.fromARGB(255, 65, 78, 202)
                                  : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text("Oldest",
                                style: GoogleFonts.nunito(
                                  color: _selectedButtonIndex == 2
                                      ? Colors.white
                                      : const Color.fromARGB(255, 65, 78, 202),
                                  fontSize: screenWidth * 0.035,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(screenWidth * 0.05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(4, (index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: screenWidth * 0.07,
                                  backgroundImage: const AssetImage(
                                      "assets/images/ellipseman.png"),
                                ),
                                SizedBox(width: screenWidth * 0.03),
                                Text('John S',
                                    style: GoogleFonts.nunito(
                                      fontSize: screenWidth * 0.04,
                                      color: const Color.fromARGB(
                                          255, 65, 78, 202),
                                      fontWeight: FontWeight.bold,
                                    )),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.more_vert,
                                      size: screenWidth * 0.05),
                                ),
                              ],
                            ),
                            SizedBox(height: screenWidth * 0.02),
                            Text(
                                "Great article! The story about redesigning the hospital ER really resonated with me. As someone who's been on both sides of that experience, good design can truly make a difference in stressful situations Would love to hear more stories about design in healthcare!",
                                style: GoogleFonts.nunito(
                                  fontSize: screenWidth * 0.03,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey,
                                )),
                            SizedBox(height: screenWidth * 0.04),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.favorite,
                                        color: Colors.red,
                                        size: screenWidth * 0.05),
                                    SizedBox(width: screenWidth * 0.01),
                                    Text(
                                      '356',
                                      style: GoogleFonts.nunito(
                                          fontSize: screenWidth * 0.04),
                                    ),
                                  ],
                                ),
                                SizedBox(width: screenWidth * 0.04),
                                Text('1 day ago',
                                    style: GoogleFonts.nunito(
                                        fontSize: screenWidth * 0.04,
                                        color: Colors.grey)),
                              ],
                            ),
                            SizedBox(height: screenWidth * 0.04),
                          ],
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(screenWidth * 0.02),
        child: Row(
          children: [
            CircleAvatar(
              radius: screenWidth * 0.06,
              backgroundImage: const AssetImage("assets/images/comment.png"),
            ),
            SizedBox(width: screenWidth * 0.02),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Add a comment',
                            border: InputBorder.none,
                            hintStyle: GoogleFonts.nunito(
                                fontSize: screenWidth * 0.035)),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send,
                        color: const Color.fromARGB(255, 65, 78, 202),
                        size: screenWidth * 0.06,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
