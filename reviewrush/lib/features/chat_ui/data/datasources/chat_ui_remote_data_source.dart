import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:reviewrush/core/network/api_key.dart';
import 'package:reviewrush/features/chat_ui/data/models/chat_message.dart';

abstract class GPTDataSource {
  Future<String> getChatResponse(List<GPTChatModel> messages);
}

class GPTDataSourceImpl implements GPTDataSource {
  final String _apiUrl = 'https://api.openai.com/v1/chat/completions';
  final String _apiKey =
      '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';
  final String _apikey2nd =
      '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';
  @override
  Future<String> getChatResponse(List<GPTChatModel> messages) async {
    try {
      final response = await http.post(
        Uri.parse(_apiUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $api4thKeyutube',
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
        log(response.body);
        throw Exception('Failed to fetch chat response: ${response.body}');
      }
    } catch (e) {
      rethrow;
    }
  }
}
