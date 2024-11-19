import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reviewrush/core/constants/spacing.dart';
import 'package:reviewrush/features/chat_ui/presentation/screens/chat_ui_screen.dart';
import 'package:reviewrush/features/home/presentation/screens/task_creation_ui.dart';
import 'package:reviewrush/features/home/presentation/widgets/tile_of_date_based.dart';

class ScreenSubjectBased extends StatelessWidget {
  const ScreenSubjectBased({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              khbox10,
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Color.fromARGB(225, 46, 0, 0),
                ),
              ),
              khbox10,
              Text(
                "My \nSubjects,",
                style: GoogleFonts.inconsolata(
                    fontSize: 24,
                    color: const Color.fromARGB(255, 46, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
              khbox20,
              // First Row - Photo and To-Do List
              Row(
                children: [
                  // Photo Pin Card
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Container(
                              padding: const EdgeInsets.all(
                                  15), // Padding inside the SnackBar
                              decoration: BoxDecoration(
                                color: Colors.orange[400],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                'currently this feature is under development',
                                style: GoogleFonts.inconsolata(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            behavior: SnackBarBehavior
                                .floating, // Makes the SnackBar float
                            backgroundColor: Colors
                                .transparent, // Sets background as transparent
                            margin: const EdgeInsets.only(
                              // bottom: 10, // Padding from the bottom
                              left: 10, // Padding from the left
                              right: 10, // Padding from the right
                            ),
                            elevation:
                                0, // Remove shadow elevation if not desired
                            duration:
                                const Duration(seconds: 3), // Display duration
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PHOTO',
                              style: GoogleFonts.inconsolata(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Go To A New Photography Location With Zahra',
                              style: GoogleFonts.inconsolata(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // To-Do List Pin Card
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 68, 212, 128),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Subjects',
                            style: GoogleFonts.inconsolata(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'assasadasddfasasas',
                            style: GoogleFonts.inconsolata(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Second Row - Video
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Quiz',
                            style: GoogleFonts.inconsolata(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Halloween Cake Tutorial Video Editing...',
                            style: GoogleFonts.inconsolata(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              khbox20,
              // Third Row -
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Dates:",
                    style: GoogleFonts.inconsolata(
                        fontSize: 12,
                        color: const Color.fromARGB(255, 46, 0, 0),
                        fontWeight: FontWeight.bold),
                  ),
                  const Icon(Icons.short_text_rounded)
                ],
              ),
              khbox10,
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ScreenChat(),
                          ),
                        );
                      },
                      child: WidgetSubByDatesTiles(
                        title: 'first study',
                        subtitle: '7:00 PM',
                        dayCountByNumber: index + 1,
                        daysPassedCount: '2 days ago',
                        bgColorOFCount: Colors.grey,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => khbox10,
                  itemCount: 10),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(118, 135, 254, 143),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ScreenTaskCreation(),
            ),
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
