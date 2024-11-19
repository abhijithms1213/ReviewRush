import 'package:reviewrush/features/chat_ui/data/models/chat_message.dart';
import 'package:reviewrush/features/chat_ui/domain/repositories/chat_ui_repository.dart';

class GetChatResponseUseCase {
  final GPTRepository repository;

  GetChatResponseUseCase(this.repository);

  Future<String> execute(List<GPTChatModel> messages) {
    return repository.fetchChatResponse(messages);
  }
}
