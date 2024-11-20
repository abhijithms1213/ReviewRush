import 'package:reviewrush/features/chat_ui/domain/repositories/chat_ui_repository.dart';

class GetChatResponseUseCase {
  final GPTRepository repository;

  GetChatResponseUseCase(this.repository);

  Future<String> call(String message) async {
    return await repository.getResponse(message);
  }
}
