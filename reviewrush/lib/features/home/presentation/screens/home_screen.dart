import 'package:flutter/material.dart';
import 'package:reviewrush/core/constants/color.dart';
import 'package:reviewrush/core/constants/spacing.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: lightColor,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Center(
                      child: Icon(
                        Icons.hdr_strong,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const CircleAvatar(
                    backgroundColor: Colors.black12,
                    radius: 30,
                    child: Icon(Icons.import_contacts),
                  ),
                  kwbox10,
                ],
              ),
            ),
            const Text("Hello Julian,"),
            const Text("Ready for a challenge?"),
          ],
        ),
      ),
    );
  }
}
