import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class ChatService {
  static Future<String> callGemini(String prompt) async {
    final model = GenerativeModel(
        model: 'gemini-pro', apiKey: dotenv.env["API_KEY"] as String);

    final content = [Content.text(prompt)];

    final response = await model.generateContent(content);

    return response.text as String;
  }
}
