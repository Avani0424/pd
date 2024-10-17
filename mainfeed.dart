import 'package:flutter/material.dart';
import 'package:pd/bookmark.dart';
import 'package:pd/createarticle.dart';
import 'package:pd/detailedarticle.dart';
import 'package:pd/discoverfeeds.dart';
import 'package:pd/draftarticle.dart';
import 'package:pd/newarticle.dart';
import 'package:pd/newcreatearticle.dart';
import 'package:pd/notfound.dart';
import 'package:google_fonts/google_fonts.dart';

class MainFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          elevation: 0,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          title: LayoutBuilder(
            builder: (context, constraints) {
              bool isWebOrTablet = constraints.maxWidth > 600;

              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: isWebOrTablet ? 0.0 : 20.0,
                    ),
                    child: Image.asset(
                      'assets/images/shareinfofeeds.png',
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.15,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: const Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 65, 78, 202),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  CreateArticlePage(),
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
                  IconButton(
                    icon: const Icon(
                      Icons.explore_outlined,
                      color: Color.fromARGB(255, 65, 78, 202),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  DiscoverFeeds(),
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
                  IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 65, 78, 202),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  NotFound(),
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
                  IconButton(
                    icon: const Icon(
                      Icons.style_outlined,
                      color: Color.fromARGB(255, 65, 78, 202),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  Bookmark(),
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
                ],
              );
            },
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(8, (index) {
                            return Padding(
                              padding: const EdgeInsets.all(16),
                              child: Center(
                                child: Container(
                                  width: 368,
                                  height: 580,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                        color: Colors.grey[300]!, width: 1),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            const BorderRadius.vertical(
                                                top: Radius.circular(16)),
                                        child: Image.asset(
                                          'assets/images/people.png',
                                          height: 230,
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Row(
                                              children: [
                                                CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      'assets/images/ellipseman.png'),
                                                  radius: 20,
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'James Hok',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14,
                                                        color: Color.fromARGB(
                                                            255, 65, 78, 202),
                                                      ),
                                                    ),
                                                    Text(
                                                      'UIUX Designer at Google',
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 10),
                                            Row(
                                              children: [
                                                Container(
                                                  width: 74,
                                                  height: 21,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    border: Border.all(
                                                        color: Color.fromARGB(
                                                            255,
                                                            139,
                                                            139,
                                                            139)),
                                                  ),
                                                  child: Text(
                                                    'Designs',
                                                    style:
                                                        TextStyle(fontSize: 10),
                                                  ),
                                                ),
                                                const SizedBox(width: 5),
                                                Container(
                                                  width: 90,
                                                  height: 21,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    border: Border.all(
                                                        color: Color.fromARGB(
                                                            255,
                                                            139,
                                                            139,
                                                            139)),
                                                  ),
                                                  child: Text(
                                                    'Placements',
                                                    style:
                                                        TextStyle(fontSize: 10),
                                                  ),
                                                ),
                                                const SizedBox(width: 5),
                                                Container(
                                                  width: 75,
                                                  height: 21,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    border: Border.all(
                                                        color: Color.fromARGB(
                                                            255,
                                                            139,
                                                            139,
                                                            139)),
                                                  ),
                                                  child: Text(
                                                    'MAANG',
                                                    style:
                                                        TextStyle(fontSize: 10),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 10),
                                            const Text(
                                              'Best Practices for Cracking the 1st and 2nd Tier MNC’s from Institute..!',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                                color: Color.fromARGB(
                                                    255, 65, 78, 202),
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            Text(
                                                'Embarking on a journey to join a first-tier multinational corporation (MNC) straight out of your institute is an aspiration shared by many ambitious individuals. These prestigious organizations offer not Embarking on a journey to join a first-tier multinational corporation (MNC) straight out of your institute is an aspiration shared by many ambitious individuals. These prestigious...',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color.fromARGB(
                                                        255, 90, 95, 99),
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            const SizedBox(height: 50),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text('3 Days Ago',
                                                    style: GoogleFonts.nunito(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Color.fromARGB(
                                                            255, 90, 95, 99))),
                                                SizedBox(
                                                  width: 131,
                                                  height: 32,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        PageRouteBuilder(
                                                            pageBuilder: (context,
                                                                    animation,
                                                                    secondaryAnimation) =>
                                                                DetailArticle(),
                                                            transitionsBuilder:
                                                                (context,
                                                                    animation,
                                                                    secondaryAnimation,
                                                                    child) {
                                                              var begin = 0.0;
                                                              var end = 1.0;
                                                              var tween = Tween(
                                                                  begin: begin,
                                                                  end: end);
                                                              var fadeAnimation =
                                                                  animation
                                                                      .drive(
                                                                          tween);

                                                              return FadeTransition(
                                                                opacity:
                                                                    fadeAnimation,
                                                                child: child,
                                                              );
                                                            },
                                                            transitionDuration:
                                                                Duration(
                                                                    seconds:
                                                                        2)),
                                                      );
                                                    },
                                                    child: const Text(
                                                        'Read More',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255, 65, 78, 202),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text('Recent Articles',
                                style: GoogleFonts.nunito(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(250, 57, 0, 110),
                                )),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.arrow_forward,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                        pageBuilder: (context, animation,
                                                secondaryAnimation) =>
                                            Newarticle(),
                                        transitionsBuilder: (context, animation,
                                            secondaryAnimation, child) {
                                          var begin = 0.0;
                                          var end = 1.0;
                                          var tween =
                                              Tween(begin: begin, end: end);
                                          var fadeAnimation =
                                              animation.drive(tween);

                                          return FadeTransition(
                                            opacity: fadeAnimation,
                                            child: child,
                                          );
                                        },
                                        transitionDuration:
                                            Duration(seconds: 2)));
                              }),
                        ],
                      ),
                      const SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(12, (index) {
                            final List<String> imagePaths = [
                              'assets/images/article1.png',
                              'assets/images/article2.png',
                              'assets/images/article3.png',
                              'assets/images/article4.png',
                              'assets/images/article5.png',
                              'assets/images/article6.png',
                              'assets/images/article7.png',
                              'assets/images/article8.png',
                              'assets/images/article9.png',
                              'assets/images/article10.png',
                              'assets/images/article11.png',
                              'assets/images/article12.png',
                            ];

                            return Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Center(
                                child: SizedBox(
                                  width: 150,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              const BorderRadius.vertical(
                                            top: Radius.circular(16),
                                          ),
                                          child: Image.asset(
                                            imagePaths[index],
                                            height: 150,
                                            width: 150,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 4.0, top: 7),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  '10 tips for Boosting your Productivity ...',
                                                  style: GoogleFonts.nunito(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 13,
                                                      color: Color.fromARGB(
                                                          255, 65, 78, 202))),
                                              const SizedBox(height: 5),
                                              const Row(
                                                children: [
                                                  CircleAvatar(
                                                    backgroundImage: AssetImage(
                                                        'assets/images/ellipseman.png'),
                                                    radius: 10,
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    'James Hok',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromARGB(
                                                            255, 65, 78, 202)),
                                                  ),
                                                  Spacer(),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        '5 days ago',
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 8),
                                                      ),
                                                      Icon(
                                                        Icons.more_vert,
                                                        size: 15,
                                                        color: Colors.grey,
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Your Published Articles',
                                style: GoogleFonts.nunito(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(250, 57, 0, 110),
                                )),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.arrow_forward,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        DraftArticle(),
                                    transitionsBuilder: (context, animation,
                                        secondaryAnimation, child) {
                                      var begin = 0.0;
                                      var end = 1.0;
                                      var tween = Tween(begin: begin, end: end);
                                      var fadeAnimation =
                                          animation.drive(tween);

                                      return FadeTransition(
                                        opacity: fadeAnimation,
                                        child: child,
                                      );
                                    },
                                    transitionDuration: Duration(seconds: 2)),
                              );
                            },
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(12, (index) {
                            final List<String> imagePaths = [
                              'assets/images/article1.png',
                              'assets/images/article2.png',
                              'assets/images/article3.png',
                              'assets/images/article4.png',
                              'assets/images/article5.png',
                              'assets/images/article6.png',
                              'assets/images/article7.png',
                              'assets/images/article8.png',
                              'assets/images/article9.png',
                              'assets/images/article10.png',
                              'assets/images/article11.png',
                              'assets/images/article12.png',
                            ];

                            return Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Center(
                                child: SizedBox(
                                  width: 150,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              const BorderRadius.vertical(
                                            top: Radius.circular(16),
                                          ),
                                          child: Image.asset(
                                            imagePaths[index],
                                            height: 150,
                                            width: 150,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 4.0, top: 7),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  '10 tips for Boosting your Productivity ...',
                                                  style: GoogleFonts.nunito(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 13,
                                                      color: Color.fromARGB(
                                                          255, 65, 78, 202))),
                                              const SizedBox(height: 5),
                                              const Row(
                                                children: [
                                                  CircleAvatar(
                                                    backgroundImage: AssetImage(
                                                        'assets/images/ellipseman.png'),
                                                    radius: 10,
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    'Akshay',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromARGB(
                                                            255, 65, 78, 202)),
                                                  ),
                                                  Spacer(),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        '5 days ago',
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 8),
                                                      ),
                                                      Icon(
                                                        Icons.more_vert,
                                                        size: 15,
                                                        color: Colors.grey,
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('On Your Bookmark',
                                style: GoogleFonts.nunito(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(250, 57, 0, 110),
                                )),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.arrow_forward,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        Bookmark(),
                                    transitionsBuilder: (context, animation,
                                        secondaryAnimation, child) {
                                      var begin = 0.0;
                                      var end = 1.0;
                                      var tween = Tween(begin: begin, end: end);
                                      var fadeAnimation =
                                          animation.drive(tween);

                                      return FadeTransition(
                                        opacity: fadeAnimation,
                                        child: child,
                                      );
                                    },
                                    transitionDuration: Duration(seconds: 2)),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(12, (index) {
                            final List<String> imagePaths = [
                              'assets/images/article1.png',
                              'assets/images/article2.png',
                              'assets/images/article3.png',
                              'assets/images/article4.png',
                              'assets/images/article5.png',
                              'assets/images/article6.png',
                              'assets/images/article7.png',
                              'assets/images/article8.png',
                              'assets/images/article9.png',
                              'assets/images/article10.png',
                              'assets/images/article11.png',
                              'assets/images/article12.png',
                            ];

                            return Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Center(
                                child: SizedBox(
                                  width: 150,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              const BorderRadius.vertical(
                                            top: Radius.circular(16),
                                          ),
                                          child: Image.asset(
                                            imagePaths[index],
                                            height: 150,
                                            width: 150,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 4.0, top: 7),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  '10 tips for Boosting your Productivity ...',
                                                  style: GoogleFonts.nunito(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 13,
                                                      color: Color.fromARGB(
                                                          255, 65, 78, 202))),
                                              const SizedBox(height: 5),
                                              const Row(
                                                children: [
                                                  CircleAvatar(
                                                    backgroundImage: AssetImage(
                                                        'assets/images/ellipseman.png'),
                                                    radius: 10,
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    'James Hok',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromARGB(
                                                            255, 65, 78, 202)),
                                                  ),
                                                  Spacer(),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        '5 days ago',
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 8),
                                                      ),
                                                      Icon(
                                                        Icons.more_vert,
                                                        size: 15,
                                                        color: Colors.grey,
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            bool isWebOrTablet = constraints.maxWidth > 600;

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (isWebOrTablet)
                                  Row(
                                    children: [
                                      const Text(
                                        "We’re Working to expand ",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Text(
                                        "feeds!",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 65, 78, 202),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                else ...[
                                  const Text(
                                    "We’re Working to",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        "expand",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Text(
                                        " feeds!",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 65, 78, 202),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                                const Row(
                                  children: [
                                    Text(
                                      "🧡",
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 3),
                                    ),
                                    Text(
                                      "from",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 3),
                                    ),
                                    Text(
                                      "ShareInfo",
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 3),
                                    ),
                                    Text(
                                      "community team",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 20),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(bottom: 30))
                              ],
                            );
                          },
                        ),
                      ),
                    ]))));
  }
}
