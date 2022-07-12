import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:isell/data/settings.dart';

class ClienteService {
  cadastrarCliente(
    String nome,
    String cpf,
    String endereco,
    String bairro,
    String cidade,
    String email,
    context,
  ) {
    Uri url = Uri.https(Settings.baseUrl, '/clientes.json');
    http
        .post(
      url,
      body: json.encode({
        "nome": nome,
        "cpf": cpf,
        "endereco": endereco,
        "bairro": bairro,
        "cidade": cidade,
        "email": email,
      }),
    )
        .then(
      (response) {
        if (response.statusCode == 200) {
          final snackbar =
              SnackBar(content: Text('Cliente gravado com sucesso'));
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
          Navigator.pop(context);
        } else {
          final snackbar = SnackBar(content: Text('Erro ao gravar dados'));
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        }
      },
    );
  }
}
