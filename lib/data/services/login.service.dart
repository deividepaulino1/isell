import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:isell/data/settings.dart';

class LoginService {
  fazerCadastro(String email, String password) async {
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

  fazerLogin(String email, String password) async {
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
