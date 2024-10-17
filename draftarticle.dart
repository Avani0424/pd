import 'package:flutter/material.dart';
import 'package:pd/discoverfeeds.dart';
import 'package:google_fonts/google_fonts.dart';

class DraftArticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
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
          title: Row(
            children: [
              Text('My Articles',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Color.fromARGB(250, 57, 0, 110),
                  )),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.black),
              onPressed: () {},
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Draft(15)'),
              Tab(text: 'Published(27)'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ArticleList(
              articles: [
                'assets/images/article01.png',
                'assets/images/draft1.png',
                'assets/images/draft2.png',
              ],
            ),
            ArticleList(
              articles: [
                'assets/images/publish1.png',
                'assets/images/publish2.png',
                'assets/images/publish3.png',
                'assets/images/publish4.png',
                'assets/images/publish5.png',
                'assets/images/publish7.png',
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ArticleList extends StatelessWidget {
  final List<String> articles;

  const ArticleList({required this.articles});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return ListView(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
      children: articles
          .map((imagePath) => ArticleItem(imagePath: imagePath))
          .toList(),
    );
  }
}

class ArticleItem extends StatelessWidget {
  final String imagePath;

  const ArticleItem({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(screenWidth * 0.02),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: imagePath == 'assets/images/draft1.png' ||
                      imagePath == 'assets/images/draft2.png'
                  ? BorderRadius.circular(16)
                  : BorderRadius.zero,
              border: Border.all(
                color: imagePath == 'assets/images/draft1.png' ||
                        imagePath == 'assets/images/draft2.png'
                    ? Colors.grey
                    : Colors.transparent,
                width: imagePath == 'assets/images/draft1.png' ||
                        imagePath == 'assets/images/draft2.png'
                    ? 1
                    : 0,
              ),
            ),
            child: ClipRRect(
              borderRadius: imagePath == 'assets/images/draft1.png' ||
                      imagePath == 'assets/images/draft2.png'
                  ? BorderRadius.circular(16)
                  : BorderRadius.zero,
              child: Image.asset(
                imagePath,
                width: screenWidth * 0.25,
                height: screenWidth * 0.25,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('10 tips for Boosting your Productivity ...',
                    style: GoogleFonts.nunito(
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 65, 78, 202),
                    )),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      'Today',
                      style: GoogleFonts.nunito(
                          fontSize: screenWidth * 0.03,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.app_registration,
                      color: Colors.grey,
                      size: 18,
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.more_vert,
                      color: Colors.grey,
                      size: 18,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
