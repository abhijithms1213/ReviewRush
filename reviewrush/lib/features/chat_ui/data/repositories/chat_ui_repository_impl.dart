import 'package:reviewrush/features/chat_ui/data/datasources/chat_ui_remote_data_source.dart';
import 'package:reviewrush/features/chat_ui/domain/repositories/chat_ui_repository.dart';

class GPTRepositoryImpl implements GPTRepository {
  final GPTDataSource remoteDataSource;

  GPTRepositoryImpl(this.remoteDataSource);

  @override
  Future<String> getResponse(String message) async {
    return await remoteDataSource.fetchResponse(message);
  }
}
