import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reviewrush/core/constants/spacing.dart';

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

                  // To-Do List Pin Card
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Subjects',
                            style: GoogleFonts.inconsolata(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'assasadasddfasasas',
                            style: GoogleFonts.inconsolata(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
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
                    return WidgetSubByDatesTiles(
                      title: 'first study',
                      subtitle: 'Jain',
                      dayCountByNumber: index + 1,
                      daysPassedCount: '2 days',
                      bgColorOFCount: Colors.grey,
                    );
                  },
                  separatorBuilder: (context, index) => khbox10,
                  itemCount: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class WidgetSubByDatesTiles extends StatelessWidget {
  final String title;
  final String subtitle;
  final int dayCountByNumber;
  final String daysPassedCount;
  final Color bgColorOFCount;

  const WidgetSubByDatesTiles({
    super.key,
    required this.title,
    required this.subtitle,
    required this.dayCountByNumber,
    required this.daysPassedCount,
    required this.bgColorOFCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: bgColorOFCount,
          ),
          child: Center(
            child: Text(dayCountByNumber.toString()),
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        trailing: Text(
          daysPassedCount,
          style: const TextStyle(
            fontSize: 14,
            color: Color.fromARGB(255, 130, 11, 3),
          ),
        ),
      ),
    );
  }
}
