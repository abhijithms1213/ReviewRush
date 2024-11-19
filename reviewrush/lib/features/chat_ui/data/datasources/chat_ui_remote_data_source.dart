import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:reviewrush/features/chat_ui/data/models/chat_message.dart';

abstract class GPTDataSource {
  Future<String> getChatResponse(List<GPTChatModel> messages);
}

class GPTDataSourceImpl implements GPTDataSource {
  final String _apiUrl = 'https://api.openai.com/v1/chat/completions';
  final String _apiKey = 'your_openai_api_key_here';

  @override
  Future<String> getChatResponse(List<GPTChatModel> messages) async {
    try {
      final response = await http.post(
        Uri.parse(_apiUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $_apiKey',
        },
        body: jsonEncode({
          "model": "gpt-4o-mini",
          "messages": messages.map((msg) => msg.toJson()).toList(),
          "temperature": 0.7,
        }),
      );

      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body);
        return decoded['choices'][0]['message']['content'];
      } else {
        throw Exception('Failed to fetch chat response: ${response.body}');
      }
    } catch (e) {
      rethrow;
    }
  }
}
