import 'package:flutter/material.dart';
import 'package:pd/mainfeed.dart';
import 'package:pd/newcreatearticle.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateArticlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          scrolledUnderElevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.close, color: Colors.black),
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
          title: Row(
            children: [
              Text('Create Article',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Color(0xFF2C1E68),
                  )),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.black),
              onPressed: () {},
            ),
          ]),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: screenWidth * 0.9,
                  width: screenWidth * 0.9,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 244, 244, 244),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.photo_outlined,
                            size: 70, color: Colors.grey),
                        const SizedBox(height: 8),
                        Text('Add Article Cover Image',
                            style: GoogleFonts.nunito(color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text('Title',
                  style: GoogleFonts.nunito(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 243, 240, 240),
                    hintText: 'Article Title',
                    hintStyle:
                        GoogleFonts.nunito(color: Colors.grey, fontSize: 12)),
              ),
              const SizedBox(height: 20),
              Text('Article',
                  style: GoogleFonts.nunito(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                height: screenHeight * 0.6,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: 13,
                      runSpacing: 8,
                      children: [
                        Icon(
                          Icons.format_align_left,
                          size: 20,
                          color: Color.fromARGB(255, 139, 139, 139),
                        ),
                        Icon(
                          Icons.format_align_center,
                          size: 20,
                          color: Color.fromARGB(255, 139, 139, 139),
                        ),
                        Icon(
                          Icons.format_align_right,
                          size: 20,
                          color: Color.fromARGB(255, 139, 139, 139),
                        ),
                        Icon(
                          Icons.format_align_justify,
                          size: 20,
                          color: Color.fromARGB(255, 139, 139, 139),
                        ),
                        Icon(
                          Icons.format_underline,
                          size: 20,
                          color: Color.fromARGB(255, 139, 139, 139),
                        ),
                        Icon(
                          Icons.format_italic,
                          size: 20,
                          color: Color.fromARGB(255, 139, 139, 139),
                        ),
                        Icon(
                          Icons.format_size,
                          size: 20,
                          color: Color.fromARGB(255, 139, 139, 139),
                        ),
                        Icon(
                          Icons.palette_outlined,
                          size: 20,
                          color: Color.fromARGB(255, 139, 139, 139),
                        ),
                        Icon(
                          Icons.add_link,
                          size: 20,
                          color: Color.fromARGB(255, 139, 139, 139),
                        ),
                        Icon(
                          Icons.add_photo_alternate_outlined,
                          size: 20,
                          color: Color.fromARGB(255, 139, 139, 139),
                        ),
                      ],
                    ),
                    const Divider(color: Colors.grey),
                    Text("Write Your Article here!",
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          color: Color.fromARGB(255, 139, 139, 139),
                        ))
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
                    hintText: 'Select Topics',
                    hintStyle: GoogleFonts.nunito(color: Colors.grey)),
                items: [
                  'UI/UX Designing',
                ].map((String topic) {
                  return DropdownMenuItem<String>(
                    value: topic,
                    child: Text(topic),
                  );
                }).toList(),
                onChanged: (String? newValue) {},
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Set Publishing Time',
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(height: 8),
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
                            suffixIcon:
                                const Icon(Icons.calendar_month_outlined),
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
                ),
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
                                    Text('Confirm Save',
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFFE4E7FC),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
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
                                            backgroundColor:
                                                const Color(0xFF3949AB),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                          child: Text('Yes,Save',
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
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFC0C5F7),
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          minimumSize: const Size(290, 47),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        child: Text('Save as Draft',
                            style: GoogleFonts.nunito(
                              color: Color.fromARGB(255, 65, 78, 202),
                            )),
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
                                      Newcreatearticle(),
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
                        child: Text('Continue to Publish',
                            style: GoogleFonts.nunito(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
