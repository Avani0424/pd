import 'package:flutter/material.dart';
import 'package:pd/following.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/topwriters.dart';

class ViewArticle extends StatefulWidget {
  ViewArticle({super.key});

  @override
  _ViewArticleState createState() => _ViewArticleState();
}

class _ViewArticleState extends State<ViewArticle>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final avatarRadius = screenWidth * 0.05;
    final mainPadding = screenWidth * 0.04;

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          "Profile",
          style: GoogleFonts.nunito(),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
        actions: [
          IconButton(
            icon: Icon(
              Icons.logout_rounded,
              color: Color.fromARGB(255, 65, 78, 202),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Color.fromARGB(255, 65, 78, 202),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
            top: screenHeight * 0.05, left: mainPadding, right: mainPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ellipseman.png'),
                  radius: avatarRadius,
                ),
                SizedBox(width: screenWidth * 0.03),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'James Hok',
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.04,
                        color: Color.fromARGB(255, 65, 78, 202),
                      ),
                    ),
                    Text(
                      'UI/UX Designer at Google',
                      style: GoogleFonts.nunito(
                        color: Colors.grey,
                        fontSize: screenWidth * 0.03,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Follow',
                    style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: screenWidth * 0.03,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 65, 78, 202),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.01),
            Divider(
                color: const Color.fromARGB(255, 151, 148, 148), thickness: 1),
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildStatsColumn('12', 'articles', screenWidth),
                  _buildDivider(screenHeight),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  Following(),
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
                    child: _buildStatsColumn('125', 'following', screenWidth),
                  ),
                  _buildDivider(
                    screenHeight,
                  ),
                  _buildStatsColumn('12.3K', 'followers', screenWidth),
                ],
              ),
            ),
            Divider(
              color: const Color.fromARGB(255, 151, 148, 148),
            ),
            TabBar(
              controller: _tabController,
              indicatorColor: Color.fromARGB(255, 65, 78, 202),
              labelColor: Color.fromARGB(255, 65, 78, 202),
              unselectedLabelColor: Colors.grey,
              indicatorWeight: 3,
              tabs: [
                Tab(text: 'Articles'),
                Tab(text: 'About'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ArticlesPage(),
                  AboutPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatsColumn(String count, String label, double screenWidth) {
    return Column(
      children: [
        Text(
          count,
          style: GoogleFonts.nunito(
            fontSize: screenWidth * 0.045,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 65, 78, 202),
          ),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: GoogleFonts.nunito(
            fontSize: screenWidth * 0.035,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildDivider(double screenHeight) {
    return Container(
      height: screenHeight * 0.03,
      width: 1,
      color: Colors.grey[300],
    );
  }
}

class ArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.04, vertical: screenHeight * 0.01),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(screenWidth * 0.02),
                child: Image.asset(
                  'assets/images/article33.png',
                  width: screenWidth * 0.25,
                  height: screenWidth * 0.25,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: screenWidth * 0.03),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '10 tips for Boosting your Productivity Gaining in Workspace',
                      style: GoogleFonts.nunito(
                        fontSize: screenWidth * 0.035,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 65, 78, 202),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.005),
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
                          icon: const Icon(
                            Icons.bookmark_outline,
                            color: Color(0xFF3F51B5),
                            size: 18,
                          ),
                        ),
                        const SizedBox(
                          width: 0,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description',
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.045,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'A UI/UX designer is the mastermind behind the scenes of the digital products you use every day, ensuring they are not only visually appealing but also functional and enjoyable to use. They bridge the gap between the technical aspects and the user experience, considering both the aesthetics and the usability.',
              style: GoogleFonts.nunito(
                fontSize: screenWidth * 0.03,
                fontWeight: FontWeight.w500,
                color: Colors.grey[700],
              ),
            ),
            Divider(height: 30, thickness: 1),
            Text(
              'Social Media',
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.045,
              ),
            ),
            SizedBox(height: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSocialIcon(
                    'assets/images/linkedin.png', 'Linkedin', screenWidth),
                _buildSocialIcon(
                    'assets/images/github.png', 'Github', screenWidth),
                _buildSocialIcon(
                    'assets/images/behance.png', 'Behance', screenWidth),
                _buildSocialIcon(
                    'assets/images/dribble.png', 'Dribbble', screenWidth),
              ],
            ),
            Divider(height: 30, thickness: 1),
            Text(
              'More Info',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.045,
              ),
            ),
            SizedBox(height: 10),
            _buildSocialIcon(
                'assets/images/globe.png', 'www.jameshok.com', screenWidth),
            _buildSocialIcon('assets/images/navigation.png', 'Bangalore, India',
                screenWidth),
            _buildSocialIcon('assets/images/bubble.png',
                'Joined since Aug, 2024', screenWidth),
            _buildSocialIcon(
                'assets/images/analytics.png', '124887 Readers', screenWidth),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialIcon(String assetPath, String label, double screenWidth) {
    return Row(
      children: [
        Image.asset(
          assetPath,
          width: screenWidth * 0.075,
          height: screenWidth * 0.075,
        ),
        SizedBox(width: screenWidth * 0.02),
        Text(label,
            style: GoogleFonts.nunito(
                fontSize: screenWidth * 0.03, color: Colors.grey[700])),
      ],
    );
  }
}
