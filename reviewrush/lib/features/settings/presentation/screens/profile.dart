import 'package:flutter/material.dart';
import 'package:reviewrush/core/constants/fonts.dart';
import 'package:reviewrush/core/constants/spacing.dart';
import 'package:reviewrush/features/settings/presentation/widgets/developer_card.dart';
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
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios)),
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
            const ProfileCard(),
          ],
        ),
      ),
    );
  }
}
