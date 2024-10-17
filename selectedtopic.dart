import 'package:flutter/material.dart';

import 'package:pd/exploretopics.dart';
import 'package:google_fonts/google_fonts.dart';

class Selectedtopic extends StatelessWidget {
  Selectedtopic({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> articles = List.generate(
      9,
      (index) {
        String imagePath;
        if (index == 6) {
          imagePath = 'assets/images/article4.png';
        } else if (index == 7) {
          imagePath = 'assets/images/article5.png';
        } else if (index == 8) {
          imagePath = 'assets/images/article8.png';
        } else if (index == 5) {
          imagePath = 'assets/images/article8.png';
        } else {
          imagePath = 'assets/images/article${index + 1}.png';
        }
        return {
          'imagePath': imagePath,
          'title': '10 tips for Boosting your Productivity ...',
          'author': 'James Hok',
          'timeAgo': '${5 + index} days ago',
        };
      },
    );

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
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
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 80),
            child: Text('Artificial Intelligence',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color.fromARGB(255, 38, 4, 70))),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Color(0xFF3F51B5),
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: [
              SizedBox(height: 40),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/Rectangle.png',
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text('Artificial Intelligence',
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sort by',
                      style: GoogleFonts.nunito(
                          fontSize: 14,
                          color: Color.fromARGB(255, 38, 4, 70),
                          fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Text('Most Popular',
                          style: GoogleFonts.nunito(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w700)),
                      Icon(
                        Icons.swap_vert,
                        color: Color(0xFF3F51B5),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 12),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 105,
                                height: 105,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/article33.png'),
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
                                    Row(
                                      children: [
                                        const CircleAvatar(
                                          radius: 12,
                                          backgroundImage: AssetImage(
                                              'assets/images/ellipseman.png'),
                                        ),
                                        const SizedBox(width: 6),
                                        Text('James Hok',
                                            style: GoogleFonts.nunito(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFF3F51B5))),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Text('5 days ago',
                                            style: GoogleFonts.nunito(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.grey,
                                            )),
                                        const Spacer(),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.bookmark_border,
                                              size: 18,
                                              color: Color(0xFF3F51B5)),
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
                          const SizedBox(height: 12),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 105,
                                height: 105,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/article44.png'),
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
                                    Row(
                                      children: [
                                        const CircleAvatar(
                                          radius: 12,
                                          backgroundImage: AssetImage(
                                              'assets/images/ellipseman.png'),
                                        ),
                                        const SizedBox(width: 6),
                                        Text('James Hok',
                                            style: GoogleFonts.nunito(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFF3F51B5))),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Text('5 days ago',
                                            style: GoogleFonts.nunito(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.grey,
                                            )),
                                        const Spacer(),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.bookmark_border,
                                              size: 18,
                                              color: Color(0xFF3F51B5)),
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
                          const SizedBox(height: 12),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 105,
                                height: 105,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/article55.png'),
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
                                    Row(
                                      children: [
                                        const CircleAvatar(
                                          radius: 12,
                                          backgroundImage: AssetImage(
                                              'assets/images/ellipseman.png'),
                                        ),
                                        const SizedBox(width: 6),
                                        Text('James Hok',
                                            style: GoogleFonts.nunito(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFF3F51B5))),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Text('5 days ago',
                                            style: GoogleFonts.nunito(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.grey,
                                            )),
                                        const Spacer(),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.bookmark_border,
                                              size: 18,
                                              color: Color(0xFF3F51B5)),
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
                          const SizedBox(height: 12),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 105,
                                height: 105,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/article88.png'),
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
                                    Row(
                                      children: [
                                        const CircleAvatar(
                                          radius: 12,
                                          backgroundImage: AssetImage(
                                              'assets/images/ellipseman.png'),
                                        ),
                                        const SizedBox(width: 6),
                                        Text('James Hok',
                                            style: GoogleFonts.nunito(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFF3F51B5))),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Text('5 days ago',
                                            style: GoogleFonts.nunito(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.grey,
                                            )),
                                        const Spacer(),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.bookmark_border,
                                              size: 18,
                                              color: Color(0xFF3F51B5)),
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
                          const SizedBox(height: 12),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 105,
                                height: 105,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/article44.png'),
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
                                    Row(
                                      children: [
                                        const CircleAvatar(
                                          radius: 12,
                                          backgroundImage: AssetImage(
                                              'assets/images/ellipseman.png'),
                                        ),
                                        const SizedBox(width: 6),
                                        Text('James Hok',
                                            style: GoogleFonts.nunito(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFF3F51B5))),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Text('5 days ago',
                                            style: GoogleFonts.nunito(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.grey,
                                            )),
                                        const Spacer(),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.bookmark_border,
                                              size: 18,
                                              color: Color(0xFF3F51B5)),
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
                          const SizedBox(height: 12),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 105,
                                height: 105,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/article55.png'),
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
                                    Row(
                                      children: [
                                        const CircleAvatar(
                                          radius: 12,
                                          backgroundImage: AssetImage(
                                              'assets/images/ellipseman.png'),
                                        ),
                                        const SizedBox(width: 6),
                                        Text('James Hok',
                                            style: GoogleFonts.nunito(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFF3F51B5))),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Text('5 days ago',
                                            style: GoogleFonts.nunito(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.grey,
                                            )),
                                        const Spacer(),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.bookmark_border,
                                              size: 18,
                                              color: Color(0xFF3F51B5)),
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
                          const SizedBox(height: 12),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 105,
                                height: 105,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/article88.png'),
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
                                    Row(
                                      children: [
                                        const CircleAvatar(
                                          radius: 12,
                                          backgroundImage: AssetImage(
                                              'assets/images/ellipseman.png'),
                                        ),
                                        const SizedBox(width: 6),
                                        Text('James Hok',
                                            style: GoogleFonts.nunito(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFF3F51B5))),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Text('5 days ago',
                                            style: GoogleFonts.nunito(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.grey,
                                            )),
                                        const Spacer(),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.bookmark_border,
                                              size: 18,
                                              color: Color(0xFF3F51B5)),
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
                        ],
                      )))
            ]));
  }
}
