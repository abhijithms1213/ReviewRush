import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool showToggle;
  final bool initialToggleValue;
  final ValueChanged<bool> onToggleChanged;

  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.showToggle = false,
    this.initialToggleValue = false,
    required this.onToggleChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      elevation: 0,
      color: Colors.white,
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.black87,
          size: 24,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black87,
          ),
        ),
        trailing: showToggle
            ? Switch(
                value: initialToggleValue,
                onChanged: onToggleChanged,
                activeColor: Colors.blue, // Color of the toggle thumb when ON
                activeTrackColor:
                    Colors.blue[200], // Color of the track when ON
                inactiveThumbColor:
                    Colors.grey, // Color of the toggle thumb when OFF
                inactiveTrackColor:
                    Colors.grey[300], // Color of the track when OFF
              )
            : const Icon(
                Icons.chevron_right,
                color: Colors.black54,
              ),
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 4,
        ),
      ),
    );
  }
}
