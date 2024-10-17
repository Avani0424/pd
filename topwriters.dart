import 'package:flutter/material.dart';
import 'package:pd/discoverfeeds.dart';
import 'package:pd/viewarticle.dart';
import 'package:google_fonts/google_fonts.dart';

class TopWriters extends StatelessWidget {
  final List<Writer> writers = List.generate(
    15,
    (index) => Writer(
      id: index,
      name: "James Hok",
      jobTitle: "UI/UX Designer at Google",
      isFollowing: index % 2 == 0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Top Writers",
              style: GoogleFonts.nunito(
                  fontSize: 16,
                  color: Color.fromARGB(255, 38, 4, 70),
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: writers.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (index == 0) {
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
              }
            },
            child: WriterTile(
              rank: index + 1,
              writer: writers[index],
            ),
          );
        },
      ),
    );
  }
}

class Writer {
  int id;
  String name;
  String jobTitle;
  bool isFollowing;

  Writer({
    required this.id,
    required this.name,
    required this.jobTitle,
    required this.isFollowing,
  });
}

class WriterTile extends StatefulWidget {
  final int rank;
  final Writer writer;

  WriterTile({required this.rank, required this.writer});

  @override
  _WriterTileState createState() => _WriterTileState();
}

class _WriterTileState extends State<WriterTile> {
  late bool isFollowing;

  @override
  void initState() {
    super.initState();
    isFollowing = widget.writer.isFollowing;
  }

  void toggleFollow() {
    setState(() {
      isFollowing = !isFollowing;
      widget.writer.isFollowing = isFollowing;
    });
  }

  @override
  Widget build(BuildContext context) {
    final customColor = Color.fromARGB(255, 65, 78, 202);
    final screenWidth = MediaQuery.of(context).size.width;
    final avatarSize = screenWidth * 0.1;
    final fontSize = screenWidth * 0.04;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: screenWidth * 0.02,
        horizontal: 20,
      ),
      child: Row(
        children: [
          Text('${widget.rank.toString().padLeft(2, '0')}',
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                fontSize: fontSize,
              )),
          SizedBox(width: screenWidth * 0.02),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/ellipseman.png'),
            radius: avatarSize / 2,
          ),
          SizedBox(width: screenWidth * 0.02),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.writer.name,
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold,
                        fontSize: fontSize,
                        color: Color.fromARGB(255, 65, 78, 202))),
                Text(widget.writer.jobTitle,
                    style: GoogleFonts.nunito(
                      fontSize: fontSize * 0.8,
                    )),
              ],
            ),
          ),
          SizedBox(
            width: isFollowing ? 92 : 63,
            height: 24,
            child: ElevatedButton(
              onPressed: toggleFollow,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 12),
                backgroundColor: isFollowing ? Colors.white : customColor,
                side: BorderSide(
                  color: customColor,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: FittedBox(
                child: Text(
                  isFollowing ? "Following" : "Follow",
                  style: GoogleFonts.nunito(
                    color: isFollowing ? customColor : Colors.white,
                    fontSize: fontSize * 0.9,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
