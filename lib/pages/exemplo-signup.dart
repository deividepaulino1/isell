import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:isell/data/settings.dart';

class SignupService {
  signup(String email, String password) async {
    http.Response response = await http.post(
      Uri.parse(DadosGlobais.urlSignup),
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
      Uri.parse(DadosGlobais.urlSign),
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
