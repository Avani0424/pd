import 'package:flutter/material.dart';
import 'package:pd/detailedarticle.dart';
import 'package:pd/draftarticle.dart';
import 'package:pd/exploretopics.dart';
import 'package:pd/mainfeed.dart';
import 'package:pd/mostpopular.dart';
import 'package:pd/newarticle.dart';
import 'package:pd/notfound.dart';
import 'package:pd/recommendation.dart';
import 'package:pd/topwriters.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscoverFeeds extends StatelessWidget {
  DiscoverFeeds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Image.asset(
                'assets/images/ShareInfo.png',
                height: 30,
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () {
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
                child: Text('Discover',
                    style: GoogleFonts.nunito(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(250, 57, 0, 110),
                    )),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Color.fromARGB(255, 65, 78, 202),
              ),
              onPressed: () {},
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
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        DraftArticle(),
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
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 18, right: 18),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey[200],
                filled: true,
                hintText: 'Search feeds or writers here...',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                prefixIcon: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
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
                  icon: const Icon(Icons.search, color: Colors.grey),
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 15),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Most Popular',
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Color.fromARGB(250, 57, 0, 110),
                      )),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward, color: Colors.grey),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            Mostpopular(),
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
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      DetailArticle(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
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
                        child: SizedBox(
                          width: 150,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
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
                                  padding:
                                      const EdgeInsets.only(left: 4.0, top: 7),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          '10 tips for Boosting your Productivity ...',
                                          style: GoogleFonts.nunito(
                                              fontWeight: FontWeight.bold,
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
                  padding: const EdgeInsets.all(3.0),
                  child: Text('Explore by Topics',
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Color.fromARGB(250, 57, 0, 110),
                      )),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward, color: Colors.grey),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            ExploreTopics(),
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
                )
              ],
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(12, (index) {
                  return _buildTopicCard(
                    title: index == 0 ? 'AI' : 'Data Science ',
                    imagePath: 'assets/images/article01.png',
                    articles: '100+ Articles',
                  );
                }),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text('Top Writers',
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Color.fromARGB(250, 57, 0, 110),
                      )),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.arrow_forward, color: Colors.grey),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            TopWriters(),
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
            const SizedBox(height: 10),
            SizedBox(
              height: 120,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...[
                      'Ronald',
                      'Theresa',
                      'Natasya',
                      'Alfrad',
                      'Raheedi',
                      'Josna',
                      'Nitheena',
                      'Richard',
                      'Mathew',
                      'Jonad',
                      'Theresa',
                      'Alfrad',
                      'Ronald',
                      'Richard',
                    ].map((name) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.width > 600 ? 24 : 12,
                        ),
                        child: _buildProfileCircle(name, name,
                            size: MediaQuery.of(context).size.width > 600
                                ? 100
                                : 80),
                      );
                    }).toList(),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text('Our Recommendations',
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Color.fromARGB(250, 57, 0, 110),
                      )),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward, color: Colors.grey),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            Recommendation(),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(16),
                                ),
                                child: Image.asset(
                                  imagePaths[index],
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 4.0, top: 7),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '10 tips for Boosting your Productivity ...',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color:
                                              Color.fromARGB(255, 65, 78, 202)),
                                    ),
                                    SizedBox(height: 5),
                                    Row(
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
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text('Recent Articles',
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Color.fromARGB(250, 57, 0, 110),
                      )),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward, color: Colors.grey),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            Newarticle(),
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
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 105,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/article01.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10 tips for Boosting your Productivity ...',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3F51B5),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        const Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundImage:
                                  AssetImage('assets/images/ellipseman.png'),
                            ),
                            SizedBox(width: 6),
                            Text(
                              'James Hok',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF3F51B5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Text(
                              '5 days ago',
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark,
                                  size: 18, color: Color(0xFF3F51B5)),
                            ),
                            const SizedBox(
                              width: 0,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert,
                                  size: 18, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 105,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/article22.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10 tips for Boosting your Productivity ...',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3F51B5),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        const Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundImage:
                                  AssetImage('assets/images/ellipseman.png'),
                            ),
                            SizedBox(width: 6),
                            Text(
                              'James Hok',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF3F51B5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Text(
                              '5 days ago',
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark,
                                  size: 18, color: Color(0xFF3F51B5)),
                            ),
                            const SizedBox(
                              width: 0,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert,
                                  size: 18, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 105,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/article33.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10 tips for Boosting your Productivity ...',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3F51B5),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        const Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundImage:
                                  AssetImage('assets/images/ellipseman.png'),
                            ),
                            SizedBox(width: 6),
                            Text(
                              'James Hok',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF3F51B5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Text(
                              '5 days ago',
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark,
                                  size: 18, color: Color(0xFF3F51B5)),
                            ),
                            const SizedBox(
                              width: 0,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert,
                                  size: 18, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 105,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/article44.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10 tips for Boosting your Productivity ...',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3F51B5),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        const Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundImage:
                                  AssetImage('assets/images/ellipseman.png'),
                            ),
                            SizedBox(width: 6),
                            Text(
                              'James Hok',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF3F51B5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Text(
                              '5 days ago',
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark,
                                  size: 18, color: Color(0xFF3F51B5)),
                            ),
                            const SizedBox(
                              width: 0,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert,
                                  size: 18, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 105,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/article55.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10 tips for Boosting your Productivity ...',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3F51B5),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        const Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundImage:
                                  AssetImage('assets/images/ellipseman.png'),
                            ),
                            SizedBox(width: 6),
                            Text(
                              'James Hok',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF3F51B5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Text(
                              '5 days ago',
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark,
                                  size: 18, color: Color(0xFF3F51B5)),
                            ),
                            const SizedBox(
                              width: 0,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert,
                                  size: 18, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 105,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/article88.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10 tips for Boosting your Productivity ...',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3F51B5),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        const Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundImage:
                                  AssetImage('assets/images/ellipseman.png'),
                            ),
                            SizedBox(width: 6),
                            Text(
                              'James Hok',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF3F51B5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Text(
                              '5 days ago',
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark,
                                  size: 18, color: Color(0xFF3F51B5)),
                            ),
                            const SizedBox(
                              width: 0,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert,
                                  size: 18, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 105,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/article66.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10 tips for Boosting your Productivity ...',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3F51B5),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        const Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundImage:
                                  AssetImage('assets/images/ellipseman.png'),
                            ),
                            SizedBox(width: 6),
                            Text(
                              'James Hok',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF3F51B5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Text(
                              '5 days ago',
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark,
                                  size: 18, color: Color(0xFF3F51B5)),
                            ),
                            const SizedBox(
                              width: 0,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert,
                                  size: 18, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 105,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/article77.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10 tips for Boosting your Productivity ...',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3F51B5),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        const Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundImage:
                                  AssetImage('assets/images/ellipseman.png'),
                            ),
                            SizedBox(width: 6),
                            Text(
                              'James Hok',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF3F51B5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Text(
                              '5 days ago',
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark,
                                  size: 18, color: Color(0xFF3F51B5)),
                            ),
                            const SizedBox(
                              width: 0,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert,
                                  size: 18, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 105,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/article88.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10 tips for Boosting your Productivity ...',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3F51B5),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        const Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundImage:
                                  AssetImage('assets/images/ellipseman.png'),
                            ),
                            SizedBox(width: 6),
                            Text(
                              'James Hok',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF3F51B5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Text(
                              '5 days ago',
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark,
                                  size: 18, color: Color(0xFF3F51B5)),
                            ),
                            const SizedBox(
                              width: 0,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert,
                                  size: 18, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 105,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/article1010.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10 tips for Boosting your Productivity ...',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3F51B5),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        const Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundImage:
                                  AssetImage('assets/images/ellipseman.png'),
                            ),
                            SizedBox(width: 6),
                            Text(
                              'James Hok',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF3F51B5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Text(
                              '5 days ago',
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark,
                                  size: 18, color: Color(0xFF3F51B5)),
                            ),
                            const SizedBox(
                              width: 0,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert,
                                  size: 18, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 105,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/article1111.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10 tips for Boosting your Productivity ...',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3F51B5),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        const Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundImage:
                                  AssetImage('assets/images/ellipseman.png'),
                            ),
                            SizedBox(width: 6),
                            Text(
                              'James Hok',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF3F51B5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Text(
                              '5 days ago',
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark,
                                  size: 18, color: Color(0xFF3F51B5)),
                            ),
                            const SizedBox(
                              width: 0,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert,
                                  size: 18, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 105,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/article1212.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10 tips for Boosting your Productivity ...',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3F51B5),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        const Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundImage:
                                  AssetImage('assets/images/ellipseman.png'),
                            ),
                            SizedBox(width: 6),
                            Text(
                              'James Hok',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF3F51B5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Text(
                              '5 days ago',
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark,
                                  size: 18, color: Color(0xFF3F51B5)),
                            ),
                            const SizedBox(
                              width: 0,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert,
                                  size: 18, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        )));
  }

  Widget _buildProfileCircle(String imageName, String name,
      {required int size}) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: const Color.fromARGB(255, 171, 177, 238),
            backgroundImage: AssetImage('assets/images/$imageName.png'),
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(250, 57, 0, 110),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopicCard({
    required String title,
    required String imagePath,
    required String articles,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        width: 170,
        height: 120,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: 170,
                height: 120,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(180, 65, 78, 202),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 170,
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        articles,
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
