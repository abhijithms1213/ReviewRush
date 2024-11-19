import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageBubble extends StatefulWidget {
  final ChatMessage message;

  const MessageBubble({
    super.key,
    required this.message,
  });

  @override
  State<MessageBubble> createState() => _MessageBubbleState();
}

class _MessageBubbleState extends State<MessageBubble> {
  bool _isExpanded = false;

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: widget.message.isUser
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          if (!widget.message.isUser)
            const CircleAvatar(
              radius: 15,
              backgroundColor: Colors.red,
              child: Icon(Icons.audiotrack_rounded, color: Colors.white),
            ),
          Flexible(
            child: GestureDetector(
              onTap: _toggleExpanded,
              child: Container(
                constraints: const BoxConstraints(maxWidth: double.infinity),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 10.0,
                ),
                decoration: BoxDecoration(
                  color: widget.message.isUser
                      ? const Color.fromARGB(10, 0, 0, 0)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: _isExpanded || !widget.message.isUser
                    ? Text(
                        widget.message.text,
                        style: GoogleFonts.openSans(
                          color: Colors.black87,
                          fontSize: 14,
                        ),
                      )
                    : Text(
                        'Tap to see your message >',
                        style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
