import 'package:flutter/material.dart';
import 'package:pd/listbookmark.dart';
import 'package:pd/mainfeed.dart';
import 'package:google_fonts/google_fonts.dart';

class Bookmark extends StatelessWidget {
  Bookmark({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final double boxSize = 150.0;
    final double sidePadding = 20.0;
    final double betweenPadding = 20.0;

    final int itemsPerRow = (screenWidth - 2 * sidePadding + betweenPadding) ~/
        (boxSize + betweenPadding);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('My Bookmarks',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Color.fromARGB(255, 26, 04, 46),
                )),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: sidePadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.02),
              Row(
                children: [
                  Text('12 Articles',
                      style: GoogleFonts.nunito(
                          fontSize: 14, color: Colors.black)),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.apps, color: Colors.black),
                    onPressed: () {
                      IconButton(
                          icon: const Icon(Icons.apps, color: Colors.black),
                          onPressed: () {});
                    },
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  IconButton(
                    icon: const Icon(Icons.list_alt, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  Listbookmark(),
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
              ),
              SizedBox(height: screenHeight * 0.02),
              buildArticleCardRows(
                  context,
                  [
                    'assets/images/article011.png',
                    'assets/images/article02.png',
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
                  ],
                  boxSize,
                  sidePadding,
                  betweenPadding,
                  itemsPerRow),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildArticleCardRows(
      BuildContext context,
      List<String> imagePaths,
      double boxSize,
      double sidePadding,
      double betweenPadding,
      int itemsPerRow) {
    List<Widget> rows = [];
    for (int i = 0; i < imagePaths.length; i += itemsPerRow) {
      int itemsInCurrentRow = (i + itemsPerRow <= imagePaths.length)
          ? itemsPerRow
          : imagePaths.length - i;

      rows.add(
        Padding(
          padding: EdgeInsets.only(bottom: betweenPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int j = i; j < i + itemsInCurrentRow; j++)
                buildArticleCard(imagePaths[j], boxSize),
              if (itemsInCurrentRow < itemsPerRow)
                for (int k = 0; k < itemsPerRow - itemsInCurrentRow; k++)
                  SizedBox(width: boxSize),
            ],
          ),
        ),
      );
    }
    return Column(children: rows);
  }

  Widget buildArticleCard(String imagePath, double boxSize) {
    return Container(
      width: boxSize,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              imagePath,
              height: boxSize,
              width: boxSize,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text('10 tips for Boosting your Productivity ...',
              style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Color.fromARGB(255, 65, 78, 202))),
          const SizedBox(height: 5),
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/ellipseman.png'),
                radius: 10,
              ),
              const SizedBox(width: 5),
              Text(
                'James Hok',
                style: GoogleFonts.nunito(
                    color: Color.fromARGB(255, 65, 78, 202),
                    fontSize: 10,
                    fontWeight: FontWeight.w700),
              ),
              Spacer(),
              Row(
                children: [
                  Text('5 days ago',
                      style: GoogleFonts.nunito(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.w700)),
                  Icon(
                    Icons.more_vert,
                    size: 15,
                    color: Colors.grey,
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
