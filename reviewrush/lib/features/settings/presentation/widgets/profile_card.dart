import 'package:flutter/material.dart';
import 'package:reviewrush/core/constants/spacing.dart';
import 'package:reviewrush/features/settings/presentation/screens/settings_screen.dart';
import 'package:reviewrush/features/settings/presentation/widgets/action_button.dart';

class PatientProfileCard extends StatelessWidget {
  final String name;
  final String age;
  final String gender;
  final String diagnosis;
  final String imageUrl;

  const PatientProfileCard({
    super.key,
    required this.name,
    required this.age,
    required this.gender,
    required this.diagnosis,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmallScreen = constraints.maxWidth < 600;

        return Container(
          width: isSmallScreen ? double.infinity : 400,
          height: isSmallScreen ? 500 : 600,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Background Image
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              // Gradient Overlay
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.7),
                    ],
                  ),
                ),
              ),
              // Content
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ActionButton(
                          icon: Icons.settings,
                          onTap: () { Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const ScreenSettings(),
                              ),
                            );},
                        ),
                      ],
                    ),
                    khbox20,
                    // Patient Info
                    Text(
                      '$gender, $age',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    khbox10,
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    khbox30,
                    khbox30,
                    Row(
                      children: [
                        kwbox20,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Diagnosis;',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ),
                            Text(
                              diagnosis,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    // Action Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ActionButton(
                          icon: Icons.image_outlined,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const ScreenSettings(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
