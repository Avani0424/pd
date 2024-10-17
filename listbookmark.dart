import 'package:flutter/material.dart';
import 'package:pd/bookmark.dart';
import 'package:pd/mainfeed.dart';
import 'package:google_fonts/google_fonts.dart';

class Listbookmark extends StatelessWidget {
  Listbookmark({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.white,
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
          title: const Text(
            'My Bookmarks',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Text(
                            '12 Articles',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(Icons.apps, color: Colors.black),
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
                          const SizedBox(width: 10),
                          IconButton(
                            icon:
                                const Icon(Icons.list_alt, color: Colors.black),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 10, top: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                            'assets/images/article01.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '10 tips for Boosting your Productivity ...',
                                          style: GoogleFonts.nunito(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
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
                                                  color: Color(0xFF3F51B5),
                                                )),
                                          ],
                                        ),
                                        const SizedBox(height: 4),
                                        Row(
                                          children: [
                                            Text('5 days ago',
                                                style: GoogleFonts.nunito(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.grey,
                                                )),
                                            const Spacer(),
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.bookmark,
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
                                            'assets/images/article22.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '10 tips for Boosting your Productivity ...',
                                          style: GoogleFonts.nunito(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
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
                                                  color: Color(0xFF3F51B5),
                                                )),
                                          ],
                                        ),
                                        const SizedBox(height: 4),
                                        Row(
                                          children: [
                                            Text('5 days ago',
                                                style: GoogleFonts.nunito(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.grey,
                                                )),
                                            const Spacer(),
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.bookmark,
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
                                            'assets/images/article33.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '10 tips for Boosting your Productivity ...',
                                          style: GoogleFonts.nunito(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
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
                                                  color: Color(0xFF3F51B5),
                                                )),
                                          ],
                                        ),
                                        const SizedBox(height: 4),
                                        Row(
                                          children: [
                                            Text('5 days ago',
                                                style: GoogleFonts.nunito(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.grey,
                                                )),
                                            const Spacer(),
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.bookmark,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '10 tips for Boosting your Productivity ...',
                                          style: GoogleFonts.nunito(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
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
                                                  color: Color(0xFF3F51B5),
                                                )),
                                          ],
                                        ),
                                        const SizedBox(height: 4),
                                        Row(
                                          children: [
                                            Text('5 days ago',
                                                style: GoogleFonts.nunito(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.grey,
                                                )),
                                            const Spacer(),
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.bookmark,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '10 tips for Boosting your Productivity ...',
                                          style: GoogleFonts.nunito(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
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
                                                  color: Color(0xFF3F51B5),
                                                )),
                                          ],
                                        ),
                                        const SizedBox(height: 4),
                                        Row(
                                          children: [
                                            Text('5 days ago',
                                                style: GoogleFonts.nunito(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.grey,
                                                )),
                                            const Spacer(),
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.bookmark,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '10 tips for Boosting your Productivity ...',
                                          style: GoogleFonts.nunito(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
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
                                                  color: Color(0xFF3F51B5),
                                                )),
                                          ],
                                        ),
                                        const SizedBox(height: 4),
                                        Row(
                                          children: [
                                            Text('5 days ago',
                                                style: GoogleFonts.nunito(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.grey,
                                                )),
                                            const Spacer(),
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.bookmark,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '10 tips for Boosting your Productivity ...',
                                          style: GoogleFonts.nunito(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
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
                                                  color: Color(0xFF3F51B5),
                                                )),
                                          ],
                                        ),
                                        const SizedBox(height: 4),
                                        Row(
                                          children: [
                                            Text('5 days ago',
                                                style: GoogleFonts.nunito(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.grey,
                                                )),
                                            const Spacer(),
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.bookmark,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '10 tips for Boosting your Productivity ...',
                                          style: GoogleFonts.nunito(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
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
                                                  color: Color(0xFF3F51B5),
                                                )),
                                          ],
                                        ),
                                        const SizedBox(height: 4),
                                        Row(
                                          children: [
                                            Text('5 days ago',
                                                style: GoogleFonts.nunito(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.grey,
                                                )),
                                            const Spacer(),
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.bookmark,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '10 tips for Boosting your Productivity ...',
                                          style: GoogleFonts.nunito(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
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
                                                  color: Color(0xFF3F51B5),
                                                )),
                                          ],
                                        ),
                                        const SizedBox(height: 4),
                                        Row(
                                          children: [
                                            Text('5 days ago',
                                                style: GoogleFonts.nunito(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.grey,
                                                )),
                                            const Spacer(),
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.bookmark,
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
                          ))
                    ]))));
  }
}
