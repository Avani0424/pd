import 'package:flutter/material.dart';
import 'package:pd/discoverfeeds.dart';
import 'package:pd/selectedtopic.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreTopics extends StatelessWidget {
  final List<Map<String, String>> topics = [
    {'title': 'AI', 'articles': '100+'},
    {'title': 'Data Science', 'articles': '100+'},
    {'title': 'Data Science', 'articles': '100+'},
    {'title': 'Data Science', 'articles': '100+'},
    {'title': 'Data Science', 'articles': '100+'},
    {'title': 'Data Science', 'articles': '100+'},
    {'title': 'Data Science', 'articles': '100+'},
    {'title': 'Data Science', 'articles': '100+'},
    {'title': 'Data Science', 'articles': '100+'},
    {'title': 'Data Science', 'articles': '100+'},
    {'title': 'Data Science', 'articles': '100+'},
    {'title': 'Data Science', 'articles': '100+'},
  ];

  final String imagePath = 'assets/images/article01.png';

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,
              color: Color.fromARGB(255, 38, 4, 70)),
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
        title: Text('Explore Topics',
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Color.fromARGB(255, 38, 4, 70),
            )),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: screenWidth < 600 ? 2 : 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 150 / 100,
          ),
          itemCount: topics.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                if (topics[index]['title'] == 'AI') {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          Selectedtopic(),
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
                }
              },
              child: TopicCard(
                title: topics[index]['title']!,
                articles: topics[index]['articles']!,
                imagePath: imagePath,
              ),
            );
          },
        ),
      ),
    );
  }
}

class TopicCard extends StatelessWidget {
  final String title;
  final String articles;
  final String imagePath;

  const TopicCard({
    Key? key,
    required this.title,
    required this.articles,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(180, 65, 78, 202),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                    Text('$articles Articles',
                        style: GoogleFonts.nunito(
                          color: Colors.white70,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
