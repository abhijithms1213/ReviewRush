import 'package:flutter/material.dart';
import 'package:reviewrush/features/chat_ui/presentation/screens/chat_ui_screen.dart';
import 'package:reviewrush/features/home/presentation/screens/home_screen.dart';
import 'package:reviewrush/features/home/presentation/screens/subject_list_screen.dart';
import 'package:reviewrush/features/home/presentation/screens/task_creation_ui.dart';
import 'package:reviewrush/features/settings/presentation/screens/account_info.dart';
import 'package:reviewrush/features/settings/presentation/screens/faq_ui.dart';
import 'package:reviewrush/features/settings/presentation/screens/report_an_issue.dart';
import 'package:reviewrush/features/settings/presentation/screens/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          surface: Colors.white,
        ),
      ),
      home: const ScreenHome(),
    );
  }
}
