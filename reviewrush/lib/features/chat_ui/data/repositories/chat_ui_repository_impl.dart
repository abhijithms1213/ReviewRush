import 'package:reviewrush/features/chat_ui/data/datasources/chat_ui_remote_data_source.dart';
import 'package:reviewrush/features/chat_ui/data/models/chat_message.dart';
import 'package:reviewrush/features/chat_ui/domain/repositories/chat_ui_repository.dart';

class GPTRepositoryImpl implements GPTRepository {
  final GPTDataSource dataSource;

  GPTRepositoryImpl(this.dataSource);

  @override
  Future<String> fetchChatResponse(List<GPTChatModel> messages) {
    return dataSource.getChatResponse(messages);
  }
}
