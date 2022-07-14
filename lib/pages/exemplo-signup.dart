import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:isell/data/settings.dart';

class SignupService {
  signup(String email, String password) async {
    http.Response response = await http.post(
      Uri.parse(Settings.urlCadastro),
      body: json.encode(
        {
          "email": email,
          "password": password,
          "returnSecureToken": true,
        },
      ),
    );
    return response.statusCode;
  }

  sign(String email, String password) async {
    http.Response response = await http.post(
      Uri.parse(Settings.urlLogin),
      body: json.encode(
        {
          "email": email,
          "password": password,
          "returnSecureToken": true,
        },
      ),
    );
    return response.statusCode;
  }
}
