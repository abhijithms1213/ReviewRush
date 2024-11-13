// Screen file
import 'package:flutter/material.dart';
import 'package:reviewrush/features/settings/presentation/screens/account_info.dart';
import 'package:reviewrush/features/settings/presentation/screens/faq_ui.dart';
import 'package:reviewrush/features/settings/presentation/screens/report_an_issue.dart';
import 'package:reviewrush/features/settings/presentation/widgets/settings_tile.dart';

class ScreenSettings extends StatelessWidget {
  const ScreenSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F7FC),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'General',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 8),
          SettingsTile(
            icon: Icons.person_outline,
            title: 'Account Information',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ScreenAccount(),
                ),
              );
            },
          ),
          SettingsTile(
            icon: Icons.palette_outlined,
            title: 'Appearance',
            onTap: () {},
          ),
          SettingsTile(
            icon: Icons.notifications_outlined,
            title: 'Notifications',
            onTap: () {},
          ),
          const SizedBox(height: 24),
          const Text(
            'Support',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 8),
          SettingsTile(
            icon: Icons.warning_outlined,
            title: 'Report an issue',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ReportIssueScreen(),
                ),
              );
            },
          ),
          SettingsTile(
            icon: Icons.help_outline,
            title: 'FAQ',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FAQScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
