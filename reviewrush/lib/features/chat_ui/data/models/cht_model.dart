import 'package:reviewrush/features/chat_ui/domain/entities/message_entity.dart';

class ChatMessageModel extends ChatMessageEntity {
  ChatMessageModel({
    required super.text,
    required super.isUser,
  });

  // Factory method to create a model from JSON
  factory ChatMessageModel.fromJson(Map<String, dynamic> json) {
    return ChatMessageModel(
      text: json['text'] as String,
      isUser: json['isUser'] as bool,
    );
  }

  // Converts the model to JSON for API calls or storage
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'isUser': isUser,
    };
  }

  // Convert ChatMessageModel to Entity (if additional logic is needed)
  ChatMessageEntity toEntity() {
    return ChatMessageEntity(
      text: text,
      isUser: isUser,
    );
  }
}
