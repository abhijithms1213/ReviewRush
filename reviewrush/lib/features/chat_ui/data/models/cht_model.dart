import 'package:reviewrush/features/chat_ui/domain/entities/message_entity.dart';
import 'package:hive/hive.dart';

part 'cht_model.g.dart'; // Required for code generation

@HiveType(typeId: 0)
class ChatMessageModel extends HiveObject {
  @HiveField(0)
  final String text;

  @HiveField(1)
  final bool isUser;

  ChatMessageModel({
    required this.text,
    required this.isUser,
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
