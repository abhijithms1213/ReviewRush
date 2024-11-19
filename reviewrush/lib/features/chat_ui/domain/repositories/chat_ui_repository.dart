import 'package:reviewrush/features/chat_ui/data/models/chat_message.dart';

abstract class GPTRepository {
  Future<String> fetchChatResponse(List<GPTChatModel> messages);
}
