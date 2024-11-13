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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
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
                  border: InputBorder.none, // Removes the underline
                  filled: true,
                  fillColor:
                      Colors.white, // Ensures consistent background color
                ),
                dropdownColor:
                    Colors.white, // Background color of dropdown menu
              ),
              const SizedBox(height: 20),
              const Text("Write it", style: TextStyle(fontSize: 16)),
              khbox5,
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey),
                ),
                child: TextField(
                  controller: planController,
                  decoration: const InputDecoration(
                    hintText: "Write the description you copied",
                    border: InputBorder.none,
                  ),
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
                  child: const Text("Create Reminder"),
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
