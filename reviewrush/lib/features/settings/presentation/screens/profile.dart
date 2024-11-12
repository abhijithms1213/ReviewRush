import 'package:flutter/material.dart';
import 'package:reviewrush/core/constants/fonts.dart';
import 'package:reviewrush/core/constants/spacing.dart';
import 'package:reviewrush/features/settings/presentation/widgets/profile_card.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            khbox10,
            Text(
              "Hello \nGood Afternoon,",
              style: fontmontserratAlternatesTextStyle(
                  fontSize: 28, fontWeight: FontWeight.bold),
            ),
            khbox20,
            const PatientProfileCard(
              name: 'Anna Heraldine',
              age: '26',
              gender: 'Female',
              diagnosis: 'Sprained Knee',
              imageUrl:
                  'https://st3.depositphotos.com/1037987/15097/i/450/depositphotos_150975580-stock-photo-portrait-of-businesswoman-in-office.jpg', // Replace with actual image URL
            ),
            khbox20,
            Container(
              width: double.infinity,
              height: 150, // Set height as needed
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://media.istockphoto.com/id/862263568/photo/studio-shot-of-young-african-man-wearing-black-shirt-in-black-and-white.jpg?s=612x612&w=0&k=20&c=sL4zMN5JoW5nDGngKtkA6U4lrxa__D3F2ndl4UfZr9E=', // Replace with actual image URL
                  ),
                  fit: BoxFit.cover,
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Centered text
                    khbox30,
                    khbox30,
                    khbox30,
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(94, 244, 67, 54),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "   Abhijith MS,   ",
                            style: fontnotoSansTextStyle(
                              fontSize: 20,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
