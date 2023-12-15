import 'dart:convert';
import 'package:flutter/services.dart';

class LoginValidator {
  static Future<bool> validateCredentials(String username, String password) async {
    try {
      // Load the user data from the JSON file
      String jsonData = await rootBundle.loadString('assets/account.json');

      // Parse the JSON data
      List<dynamic> users = json.decode(jsonData);

      // Check if the provided credentials match any entry in the JSON file
      return users.any(
        (user) => user['username'] == username && user['password'] == password,
      );
    } catch (e) {
      return false;
    }
  }
}


