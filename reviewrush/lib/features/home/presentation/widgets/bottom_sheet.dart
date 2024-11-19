import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reviewrush/core/constants/spacing.dart';

class TaskBottomSheet extends StatelessWidget {
  const TaskBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'fill the details',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            'subject name',
            style: GoogleFonts.lato(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          khbox10,
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter subject name here',
              hintStyle: GoogleFonts.lato(color: Colors.black87, fontSize: 14),
              enabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(12), // Adjust the curve radius
                borderSide: const BorderSide(
                  color: Color.fromARGB(
                      75, 0, 0, 0), // Border color when not focused
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(12), // Adjust the curve radius
                borderSide: const BorderSide(
                  color: Color.fromARGB(75, 0, 0, 0),
                  width: 1.5, // Border color when focused
                ),
              ),
              border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(12), // Adjust the curve radius
                borderSide: const BorderSide(
                  color: Color.fromARGB(75, 0, 0, 0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Remaining Days',
            style: GoogleFonts.lato(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            keyboardType: TextInputType.number, // Opens the number keyboard
            decoration: InputDecoration(
              hintText: 'Enter remaining days',
              hintStyle: GoogleFonts.lato(color: Colors.black87, fontSize: 14),
              enabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(12), // Adjust the curve radius
                borderSide: const BorderSide(
                  color: Color.fromARGB(75, 0, 0, 0),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(12), // Adjust the curve radius
                borderSide: const BorderSide(
                  color: Color.fromARGB(75, 0, 0, 0),
                  width: 1.5,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(12), // Adjust the curve radius
                borderSide: const BorderSide(
                  color: Color.fromARGB(75, 0, 0, 0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // const Text(
          //   'Due Date',
          //   style: TextStyle(
          //     fontSize: 14,
          //     color: Colors.black54,
          //   ),
          // ),
          // InkWell(
          //   onTap: () {
          //     showDatePicker(
          //       context: context,
          //       initialDate: DateTime.now(),
          //       firstDate: DateTime.now(),
          //       lastDate: DateTime.now().add(const Duration(days: 365)),
          //     );
          //   },
          //   child: Container(
          //     padding: const EdgeInsets.symmetric(vertical: 8),
          //     child: Row(
          //       children: [
          //         Icon(Icons.calendar_today, color: Colors.red[300], size: 20),
          //         const SizedBox(width: 8),
          //         const Text('Today'),
          //       ],
          //     ),
          //   ),
          // ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 9, 51, 93),
                padding: const EdgeInsets.symmetric(vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Done',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
