import 'package:flutter/material.dart';
import 'package:pd/comments.dart';
import 'package:pd/discoverfeeds.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailArticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            scrolledUnderElevation: 0,
            expandedHeight: 362.0,
            floating: false,
            pinned: true,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
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
                icon: const Icon(
                  Icons.bookmarks_outlined,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(25.0)),
                      ),
                      builder: (BuildContext context) {
                        return Container(
                          height: 220,
                          padding: const EdgeInsets.all(20.0),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0)),
                          ),
                          child: Column(
                            children: [
                              Text('Delete Article',
                                  style: GoogleFonts.nunito(
                                    fontSize: 17,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w600,
                                  )),
                              const Divider(),
                              const SizedBox(height: 20),
                              Text('Are You Sure Want to Delete',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.nunito(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF2C1E68),
                                  )),
                              Text('this article as draft',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.nunito(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF2C1E68),
                                  )),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFE4E7FC),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Cancel',
                                        style: GoogleFonts.nunito(
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 65, 78, 202),
                                        )),
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 65, 78, 202),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Yes, Delete',
                                        style: GoogleFonts.nunito(
                                          color: Colors.white,
                                          fontSize: 16,
                                        )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      });
                },
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/article.png',
                width: 360,
                height: 362,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Designers as Problem Solvers - Industry Stories',
                          style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo,
                          )),
                      const Divider(color: Colors.grey),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/ellipseman.png'),
                            radius: 20,
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('James Hok',
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 65, 78, 202),
                                  )),
                              Text('UI/UX Designer at Google',
                                  style: GoogleFonts.nunito(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  )),
                            ],
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 81,
                            height: 29,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Follow',
                                style: GoogleFonts.nunito(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor:
                                    const Color.fromARGB(255, 65, 78, 202),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Divider(color: Colors.grey),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            width: 81,
                            height: 26,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color.fromARGB(255, 65, 78, 202)),
                            ),
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Text(
                                  'Designs',
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 65, 78, 202),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text('3 Days Ago',
                              style: GoogleFonts.nunito(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text.rich(
                        TextSpan(
                          style: GoogleFonts.nunito(fontSize: 14),
                          children: [
                            TextSpan(
                                text:
                                    'Designers are the ultimate problem solvers. They don\'t just create beautiful objects or user interfaces; they tackle challenges faced by businesses, users, and society as a whole. Here, we\'ll delve into the world of design through real-world stories that showcase this problem-solving spirit:\n\n',
                                style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromARGB(255, 94, 94, 94),
                                )),
                            TextSpan(
                                text: '1. Redesigning the Hospital Experience:',
                                style: GoogleFonts.nunito(
                                    color:
                                        const Color.fromARGB(255, 94, 94, 94),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12)),
                            TextSpan(
                                text:
                                    'Imagine a bustling hospital emergency room. Amidst the chaos, a designer observes the long wait times and patient frustration. They identify the problem: a confusing layout and lack of clear communication. Their solution? Redesigning the waiting area with clear signage, visual cues, and interactive displays. This not only reduces stress but also empowers patients to navigate the system more effectively.\n\n',
                                style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromARGB(255, 94, 94, 94),
                                )),
                            TextSpan(
                                text: '2. Making Education Accessible:',
                                style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromARGB(255, 94, 94, 94),
                                )),
                            TextSpan(
                                text:
                                    'In a developing country, a designer encounters the issue of limited access to educational resources. They understand the challenge: geographically dispersed schools and a lack of technology. Their response? Designing low-cost, interactive learning tools that utilize local materials and can function offline. This empowers remote schools to deliver engaging education even with limited resources.\n\n',
                                style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromARGB(255, 94, 94, 94),
                                )),
                            TextSpan(
                                text: '3. Sustainable Packaging Solutions:',
                                style: GoogleFonts.nunito(
                                    color:
                                        const Color.fromARGB(255, 94, 94, 94),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12)),
                            TextSpan(
                                text:
                                    ' A product designer witnesses the growing problem of plastic waste. They recognize the need for eco-friendly packaging alternatives. Their answer? Developing innovative packaging solutions made from recycled materials or even edible components. This not only reduces environmental impact but also enhances brand image and consumer trust.\n\n',
                                style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromARGB(255, 94, 94, 94),
                                )),
                            TextSpan(
                                text: '4. Redefining Urban Mobility:',
                                style: GoogleFonts.nunito(
                                    color:
                                        const Color.fromARGB(255, 94, 94, 94),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12)),
                            TextSpan(
                                text:
                                    'Traffic congestion and air pollution plague a major city. A transportation designer takes note. They address the issue by creating user-friendly, electric bike-sharing systems. This not only promotes sustainable transportation but also encourages healthier lifestyles and reduces reliance on cars.\nThese are just a few examples of how designers leverage their creativity, empathy, and technical skills to tackle problems across various industries.\n\n',
                                style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromARGB(255, 94, 94, 94),
                                )),
                            TextSpan(
                                text: 'The Design Thinking Process:\n',
                                style: GoogleFonts.nunito(
                                    color:
                                        const Color.fromARGB(255, 94, 94, 94),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12)),
                            TextSpan(
                                text:
                                    'These successful solutions often stem from a core design principle: design thinking. This human-centered approach involves:',
                                style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromARGB(255, 94, 94, 94),
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                            '• Empathizing: Understanding the needs and challenges of the target audience.\n'
                            '• Defining: Clearly outlining the problem that needs solving.\n'
                            '• Ideating: Brainstorming a wide range of creative solutions.\n'
                            '• Prototyping: Creating tangible representations of these solutions.\n'
                            '• Testing: Gathering feedback from users to refine the design.',
                            style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 94, 94, 94),
                            )),
                      ),
                      const SizedBox(height: 16),
                      Text(
                          "Through this iterative process, designers continuously improve their solutions, ensuring they effectively address the identified problem.\n\n"
                          "Designers are more than just creators; they are strategic problem solvers who have the power to make a positive impact on the world. By understanding user needs, employing design thinking, and constantly iterating, they craft solutions that not only look good but also function well and create a better future.",
                          style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 94, 94, 94),
                          )),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Row(
                        children: [
                          Text('Comments(10)',
                              style: GoogleFonts.nunito(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 65, 78, 202),
                                  fontWeight: FontWeight.bold)),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(Icons.arrow_forward),
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      const Comments(),
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
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  radius: 28,
                                  backgroundImage: AssetImage(
                                      "assets/images/ellipseman.png"),
                                ),
                                const SizedBox(width: 12),
                                Text('John S',
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 65, 78, 202),
                                      fontWeight: FontWeight.bold,
                                    )),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.more_vert),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                                'Great article! The story about redesigning the hospital ER really resonated with me. As someone who\'s been on both sides of that experience, good design can truly make a difference in stressful situations. Would love to hear more stories about design in healthcare!',
                                style: GoogleFonts.nunito(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromARGB(255, 94, 94, 94),
                                )),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 18,
                                    ),
                                    const SizedBox(width: 4),
                                    Text('356',
                                        style: GoogleFonts.nunito(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                        )),
                                  ],
                                ),
                                const SizedBox(width: 16),
                                Text('1 day ago',
                                    style: GoogleFonts.nunito(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromARGB(255, 94, 94, 94),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  radius: 28,
                                  backgroundImage: AssetImage(
                                      "assets/images/ellipseman.png"),
                                ),
                                const SizedBox(width: 12),
                                Text('John S',
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 65, 78, 202),
                                      fontWeight: FontWeight.bold,
                                    )),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.more_vert),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                                'Great article! The story about redesigning the hospital ER really resonated with me. As someone who\'s been on both sides of that experience, good design can truly make a difference in stressful situations. Would love to hear more stories about design in healthcare!',
                                style: GoogleFonts.nunito(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromARGB(255, 94, 94, 94),
                                )),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 18,
                                    ),
                                    const SizedBox(width: 4),
                                    Text('356',
                                        style: GoogleFonts.nunito(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                        )),
                                  ],
                                ),
                                const SizedBox(width: 16),
                                Text('1 day ago',
                                    style: GoogleFonts.nunito(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromARGB(255, 94, 94, 94),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  radius: 28,
                                  backgroundImage: AssetImage(
                                      "assets/images/ellipseman.png"),
                                ),
                                const SizedBox(width: 12),
                                Text('John S',
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 65, 78, 202),
                                      fontWeight: FontWeight.bold,
                                    )),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.more_vert),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                                'Great article! The story about redesigning the hospital ER really resonated with me. As someone who\'s been on both sides of that experience, good design can truly make a difference in stressful situations. Would love to hear more stories about design in healthcare!',
                                style: GoogleFonts.nunito(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromARGB(255, 94, 94, 94),
                                )),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 18,
                                    ),
                                    const SizedBox(width: 4),
                                    Text('356',
                                        style: GoogleFonts.nunito(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                        )),
                                  ],
                                ),
                                const SizedBox(width: 16),
                                Text('1 day ago',
                                    style: GoogleFonts.nunito(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromARGB(255, 94, 94, 94),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 24,
                              backgroundImage:
                                  AssetImage("assets/images/comment.png"),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                                child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 1,
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: 'Add a comment',
                                          hintStyle: GoogleFonts.nunito(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.send,
                                        color: Color.fromARGB(255, 65, 78, 202),
                                      ))
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text('More Articles Like This',
                                style: GoogleFonts.nunito(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black)),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.arrow_forward,
                              ),
                              onPressed: () {}),
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
