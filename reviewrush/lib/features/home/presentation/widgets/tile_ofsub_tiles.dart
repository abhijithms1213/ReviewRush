import 'package:flutter/material.dart';
import 'package:reviewrush/core/constants/fonts.dart';

class SubjectsTiles extends StatelessWidget {
  const SubjectsTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(7, 0, 0, 0), width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 70,
            height: 60,
            decoration: const BoxDecoration(
                color: Color.fromARGB(43, 255, 235, 59),
                borderRadius: BorderRadius.all(Radius.circular(14))),
            child: const Center(
              child: Icon(
                Icons.hdr_strong,
                color: Colors.black87,
              ),
            ),
          ),
          // kwbox20,
          Text(
            "Engg Mechanics",
            style: fontmontserratTextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(),
          Text(
            "7 days.",
            style: fontmontserratTextStyle(
                fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
