import 'dart:convert';
import 'package:http/http.dart' as http;

abstract class GPTDataSource {
  Future<String> fetchResponse(String message);
}

class GPTDataSourceImpl implements GPTDataSource {
  final String _url =
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=AIzaSyAy93vpxQj6bK9Ien2U1QH0XgZfO0zJjog";

  final Map<String, String> _headers = {'Content-Type': 'application/json'};

  @override
  Future<String> fetchResponse(String message) async {
    final data = {
      "contents": [
        {
          "parts": [
            {"text": message}
          ]
        }
      ]
    };

    final response = await http.post(
      Uri.parse(_url),
      headers: _headers,
      body: jsonEncode(data),
    );

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      return result["candidates"][0]["content"]["parts"][0]["text"];
    } else {
      throw Exception('Failed to fetch response');
    }
  }
}
