import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:reviewrush/features/chat_ui/data/datasources/services.dart';
import 'package:reviewrush/features/chat_ui/data/models/cht_model.dart';
import 'package:reviewrush/features/chat_ui/presentation/screens/chat_bot.dart';
import 'package:reviewrush/features/chat_ui/presentation/screens/chat_ui_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // // Initialize Hive
  await Hive.initFlutter();

  // // Register the Hive adapter for the ChatMessageModel
  Hive.registerAdapter(ChatMessageModelAdapter());

  // // Open the box where chat data will be stored
  await ChatServices().openBox();

  runApp(const MyApp());
}
//test
//testing
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your applicasdaation.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: const WrapperChat(),
    );
  }
}
