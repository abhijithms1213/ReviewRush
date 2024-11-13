import 'package:flutter/material.dart';

class WidgetSubByDatesTiles extends StatelessWidget {
  final String title;
  final String subtitle;
  final int dayCountByNumber;
  final String daysPassedCount;
  final Color bgColorOFCount;

  const WidgetSubByDatesTiles({
    super.key,
    required this.title,
    required this.subtitle,
    required this.dayCountByNumber,
    required this.daysPassedCount,
    required this.bgColorOFCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: bgColorOFCount,
          ),
          child: Center(
            child: Text(dayCountByNumber.toString()),
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        trailing: Text(
          daysPassedCount,
          style: const TextStyle(
            fontSize: 14,
            color: Color.fromARGB(255, 130, 11, 3),
          ),
        ),
      ),
    );
  }
}
