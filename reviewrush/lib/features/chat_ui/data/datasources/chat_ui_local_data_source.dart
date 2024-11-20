import 'package:hive/hive.dart';
import 'package:reviewrush/features/chat_ui/data/models/cht_model.dart';

abstract class GPTLocalDataSource {
  Future<void> saveMessage(String chatId, ChatMessageModel message);
  Future<List<ChatMessageModel>> getMessages(String chatId);
}

class GPTLocalDataSourceImpl implements GPTLocalDataSource {
  final Box _chatBox;

  GPTLocalDataSourceImpl(this._chatBox);

  @override
  Future<void> saveMessage(String chatId, ChatMessageModel message) async {
    // Fetch existing messages for the chat ID
    final messages = await getMessages(chatId);

    // Add the new message
    messages.add(message);

    // Save updated messages back to the box
    await _chatBox.put(chatId, messages.map((msg) => msg.toJson()).toList());
  }

  @override
  Future<List<ChatMessageModel>> getMessages(String chatId) async {
    final List<dynamic>? rawMessages = _chatBox.get(chatId);

    if (rawMessages == null) {
      return [];
    }

    return rawMessages
        .map((rawMessage) => ChatMessageModel.fromJson(rawMessage))
        .toList();
  }
}
