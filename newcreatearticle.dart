import 'package:flutter/material.dart';
import 'package:pd/createarticle.dart';
import 'package:pd/successarticle.dart';
import 'package:google_fonts/google_fonts.dart';

class Newcreatearticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.4;

    screenWidth > 1000 ? screenWidth * 0.6 : double.infinity;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: const Text('Create Article'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    CreateArticlePage(),
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
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('Delete Article',
                            style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )),
                        const SizedBox(height: 8),
                        Divider(color: Colors.grey[300]),
                        const SizedBox(height: 16),
                        Text('Are You Sure Want to Delete',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2C1E68),
                            )),
                        Text('this Article as Draft',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2C1E68),
                            )),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFE4E7FC),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Text('Discard',
                                  style: GoogleFonts.nunito(
                                    fontSize: 16,
                                    color: Color(0xFF4B4B4B),
                                  )),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF3949AB),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Text('Yes,Delete',
                                  style: GoogleFonts.nunito(
                                    fontSize: 16,
                                    color: Colors.white,
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: imageHeight,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/article.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 65, 78, 202),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Image.asset('assets/images/stylus.png')),
                      ))
                ],
              ),
              const SizedBox(height: 20),
              Text('Title',
                  style: GoogleFonts.nunito(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              TextField(
                  readOnly: true,
                  controller: TextEditingController(
                    text: "Designers as Problem Solvers - Industry Stories",
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 243, 240, 240),
                  ),
                  style: GoogleFonts.nunito(
                    color: Color.fromARGB(255, 65, 78, 202),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 20),
              Text('Article',
                  style: GoogleFonts.nunito(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.format_align_left,
                          size: 20,
                          color: Color.fromARGB(255, 65, 78, 202),
                        ),
                        Icon(
                          Icons.format_align_center,
                          size: 20,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.format_align_right,
                          size: 20,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.format_align_justify,
                          size: 20,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.format_underlined,
                          size: 20,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.format_italic,
                          size: 20,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.format_size,
                          size: 20,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.palette_outlined,
                          size: 20,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.add_link,
                          size: 20,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.add_photo_alternate_outlined,
                          size: 20,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Divider(color: Colors.grey),
                    Text(
                        'Designers are the ultimate problem solvers.They don\'t just create beautiful objects or user interfaces; they tackle challenges faced by businesses, users, and society as a whole. Here, we\'ll delve into the world of design through real-world stories that showcase this problem-solving spirit:\n'
                        '1. Redesigning the Hospital Experience: Imagine a bustling hospital emergency room. Amidst the chaos, a designer observes the long wait times and patient frustration. They identify the problem: a confusing layout and lack of clear communication. Their solution? Redesigning the waiting area with clear signage, visual cues, and interactive displays. This not only reduces stress but also empowers patients to navigate the system more effectively.\n'
                        '2. Making Education Accessible: In a developing country, a designer encounters the issue of limited access to educational resources. They understand the challenge: geographically dispersed schools and a lack of technology. Their response? Designing low-cost, interactive learning tools that utilize local materials and can function offline. This empowers remote schools to deliver engaging education even with limited resources.\n'
                        '3. Sustainable Packaging Solutions: A product designer witnesses the growing problem of plastic waste. They recognize the need for eco-friendly packaging alternatives. Their answer? Developing innovative packaging solutions made from recycled materials or even edible components. This not only reduces environmental impact but also enhances brand image and consumer trust.\n'
                        '4. Redefining Urban Mobility: Traffic congestion and air pollution plague a major city. A transportation designer takes note. They address the issue by creating user-friendly, electric bike-sharing systems. This not only promotes sustainable transportation but also encourages healthier lifestyles and reduces reliance on cars.\n'
                        'These are just a few examples of how designers leverage their creativity, empathy, and technical skills to tackle problems across various industries.\n'
                        'The Design Thinking Process:\n'
                        'These successful solutions often stem from a core design principle: design thinking. This human-centered approach involves:',
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                    Text(
                        '• Empathizing: Understanding the needs and challenges of the target audience.\n'
                        '• Defining: Clearly outlining the problem that needs solving.\n'
                        '• Ideating: Brainstorming a wide range of creative solutions.\n'
                        '• Prototyping: Creating tangible representations of these solutions.\n'
                        '• Testing: Gathering feedback from users to refine the design.',
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                    Text(
                        "Through this iterative process, designers continuously improve their solutions, ensuring they effectively address the identified problem.\n"
                        "Conclusion:\n"
                        "Designers are more than just creators; they are strategic problem solvers who have the power to make a positive impact on the world. By understanding user needs, employing design thinking, and constantly iterating, they craft solutions that not only look good but also function well and create a better future.",
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text('Select Topics',
                  style: GoogleFonts.nunito(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 243, 240, 240),
                    hintText: 'UI/UX Designing',
                    hintStyle: GoogleFonts.nunito(
                        color: Color.fromARGB(255, 65, 78, 202),
                        fontSize: 12,
                        fontWeight: FontWeight.w500)),
                items: ['UI/UX Designing'].map((String topic) {
                  return DropdownMenuItem<String>(
                    value: topic,
                    child: Text(topic),
                  );
                }).toList(),
                onChanged: (String? newValue) {},
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 243, 240, 240),
                        hintText: 'Set a Date',
                        hintStyle: GoogleFonts.nunito(color: Colors.grey),
                        suffixIcon: const Icon(Icons.calendar_month_outlined),
                      ),
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2101),
                        );
                        if (pickedDate != null) {}
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 243, 240, 240),
                        hintText: 'Set a Time',
                        hintStyle: GoogleFonts.nunito(color: Colors.grey),
                        suffixIcon: const Icon(Icons.access_time_outlined),
                      ),
                      onTap: () async {
                        TimeOfDay? pickedTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        );
                        if (pickedTime != null) {}
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text('Allow Comments from the Community',
                  style: GoogleFonts.nunito(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 243, 240, 240),
                    hintText: 'Yes',
                    hintStyle: GoogleFonts.nunito(
                        color: Color.fromARGB(255, 65, 78, 202))),
                items: ['Yes', 'No'].map((String option) {
                  return DropdownMenuItem<String>(
                    value: option,
                    child: Text(option),
                  );
                }).toList(),
                onChanged: (String? newValue) {},
              ),
              const SizedBox(height: 30),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      width: screenWidth * 0.75,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFC0C5F7),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 13),
                        ),
                        child: Text('Save as Draft',
                            style: GoogleFonts.nunito(
                                color: Color.fromARGB(255, 65, 78, 202))),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: screenWidth * 0.75,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      Successarticle(),
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
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF414ECA),
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          minimumSize: const Size(290, 47),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        child: Text(
                          'Continue to Publish',
                          style: GoogleFonts.nunito(color: Colors.white),
                        ),
                      ),
                    ),
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
