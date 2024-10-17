import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pd/viewarticle.dart';

class Following extends StatefulWidget {
  @override
  _FollowingState createState() => _FollowingState();
}

class _FollowingState extends State<Following>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Writer> followers = List.generate(
    12,
    (index) => Writer(
      name: "James Hok",
      jobTitle: "UI/UX Designer at Google",
      isFollowing: index % 2 == 0,
    ),
  );

  final List<Writer> following = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void toggleFollow(Writer writer) {
    setState(() {
      if (writer.isFollowing) {
        writer.isFollowing = false;
        following.removeWhere((w) => w.name == writer.name);
      } else {
        writer.isFollowing = true;
        following.add(Writer(
          name: writer.name,
          jobTitle: writer.jobTitle,
          isFollowing: true,
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final appBarHeight = screenHeight * 0.08;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Top Writers"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    ViewArticle(),
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
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(appBarHeight),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: TabBar(
              controller: _tabController,
              tabs: [
                Tab(text: "Followers"),
                Tab(text: "Following"),
              ],
              indicatorColor: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildWritersList(followers, screenWidth, screenHeight),
          _buildWritersList(following, screenWidth, screenHeight),
        ],
      ),
    );
  }

  Widget _buildWritersList(
      List<Writer> writers, double screenWidth, double screenHeight) {
    return ListView.builder(
      itemCount: writers.length,
      itemBuilder: (context, index) {
        return WriterTile(
          writer: writers[index],
          onFollowToggle: () => toggleFollow(writers[index]),
          screenWidth: screenWidth,
          screenHeight: screenHeight,
        );
      },
    );
  }
}

class Writer {
  String name;
  String jobTitle;
  bool isFollowing;

  Writer({
    required this.name,
    required this.jobTitle,
    required this.isFollowing,
  });
}

class WriterTile extends StatelessWidget {
  final Writer writer;
  final VoidCallback onFollowToggle;
  final double screenWidth;
  final double screenHeight;

  WriterTile({
    required this.writer,
    required this.onFollowToggle,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    final customColor = const Color.fromARGB(255, 65, 78, 202);
    final avatarSize = screenWidth * 0.1;
    final fontSize = screenWidth * 0.04;
    final buttonWidth = screenWidth * 0.3;
    final buttonHeight = screenHeight * 0.05;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: screenWidth * 0.02,
        horizontal: screenWidth * 0.04,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: const AssetImage('assets/images/ellipseman.png'),
            radius: avatarSize / 2,
          ),
          SizedBox(width: screenWidth * 0.04),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  writer.name,
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.bold,
                      fontSize: fontSize,
                      color: Color.fromARGB(255, 65, 78, 202)),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  writer.jobTitle,
                  style: GoogleFonts.nunito(
                    fontSize: fontSize * 0.8,
                    color: Colors.grey,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SizedBox(
            width: buttonWidth,
            height: buttonHeight,
            child: ElevatedButton(
              onPressed: onFollowToggle,
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    writer.isFollowing ? Colors.white : customColor,
                side: BorderSide(
                  color: customColor,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(writer.isFollowing ? "Following" : "Follow",
                    style: GoogleFonts.nunito(
                      color: writer.isFollowing ? customColor : Colors.white,
                      fontSize: fontSize * 0.9,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
