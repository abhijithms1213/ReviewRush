import 'package:flutter/material.dart';
import 'dart:ui';

class ActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const ActionButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  // color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Icon(
                    icon,
                    color: const Color.fromARGB(171, 255, 255, 255),
                    size: 35,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
