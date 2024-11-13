import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reviewrush/core/constants/fonts.dart';
import 'package:reviewrush/core/constants/spacing.dart';

class TaskCreationScreen extends StatelessWidget {
  const TaskCreationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController planController = TextEditingController();
    String? selectedModule;

    return Scaffold(
      backgroundColor: const Color.fromARGB(253, 255, 255, 255),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  khbox20,
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color.fromARGB(255, 255, 255, 255)
                                    .withOpacity(0.6),
                                const Color.fromARGB(255, 205, 205, 205)
                                    .withOpacity(0.5),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      const CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.transparent,
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  khbox20,
                  Text("Task", style: fontmontserratTextStyle(fontSize: 16)),
                  DropdownButtonFormField<String>(
                    value: selectedModule,
                    items: List.generate(
                      5,
                      (index) => DropdownMenuItem(
                        value: 'Module ${index + 1}',
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                              text: 'Module ',
                              style: GoogleFonts.grandstander(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                          TextSpan(
                            text: '${index + 1}',
                            style: fontmontserratTextStyle(
                                color: const Color.fromARGB(
                                  255,
                                  184,
                                  34,
                                  24,
                                ),
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                      ),
                    ),
                    onChanged: (value) {
                      selectedModule = value;
                    },
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      hintText: "Select module by tap here",
                      hintStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    dropdownColor: Colors.white,
                  ),
                  const SizedBox(height: 20),
                  Text("Write it", style: GoogleFonts.khula(fontSize: 16)),
                  khbox5,
                  // Updated TextField styling
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 245, 245),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextField(
                      controller: planController,
                      decoration: InputDecoration(
                        hintText: "Write the description you copied",
                        hintStyle: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                        border: InputBorder.none,
                      ),
                      style: GoogleFonts.khula(fontSize: 16, color: Colors.black),
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                    ),
                  ),
                  khbox10,
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 32),
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      onPressed: () {
                        // Handle task creation
                      },
                      child: Text(
                        "Create Reminder",
                        style: fontmontserratTextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
       
        // Positioned button at the bottom right
          Positioned(
            bottom: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                // Handle button tap here
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 8,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.add, color: Colors.white),
                    const SizedBox(width: 8),
                    Text(
                      "+ Create New File",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                ),
              ),
            ),
          ), ],
      ),
    );
  }
}
