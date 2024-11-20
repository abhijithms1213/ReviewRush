class ChatMessageEntity {
  final String text;
  final bool isUser; // true for user messages, false for bot responses

  ChatMessageEntity({
    required this.text,
    required this.isUser,
  });
}
