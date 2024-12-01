import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_clone/config/api_json.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static final String apiKey = dotenv.env['API_KEY'] ?? '';
  static final String contextKey = dotenv.env['CONTEXT_KEY'] ?? '';
  bool isDummyData = false;

  Future<Map<String, dynamic>> fetchData({
    required BuildContext context,
    required String queryTerm,
    String start = "0",
  }) async {
    try {
      if (!isDummyData) {
        String q = queryTerm.replaceAll(' ', '+');
        final response = await http.get(
          Uri.parse(
              'https://www.googleapis.com/customsearch/v1?key=$apiKey&cx=$contextKey&q=$q&start=$start'),
        );
        if (response.statusCode == 200) {
          {
            final jsonData = response.body;
            final respData = json.decode(jsonData);
            return respData;
          }
        }
      }
    } catch (e) {
      Text(e.toString());
    }
    return apiResponse;
  }
}
