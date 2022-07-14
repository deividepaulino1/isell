import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:isell/data/settings.dart';
import 'package:http/http.dart' as http;

class ProdutoService {
  cadastrarProduto(
    String nome,
    String descricao,
    String preco,
    String quantidade,
    String codbarras,
    context,
  ) {
    Uri url = Uri.https(Settings.baseUrl, '/produtos.json');
    http
        .post(
      url,
      body: json.encode({
        "nome": nome,
        "descricao": descricao,
        "preco": preco,
        "quantidade": quantidade,
        "codbarras": codbarras,
      }),
    )
        .then(
          (response) {
            if (response.statusCode == 200) {
              final snackbar = 
                  SnackBar(content: Text('Produto gravado com sucesso'));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
              Navigator.pop(context);
            } else {
              final snackbar = 
                  SnackBar(content: Text('Erro ao gravar dados do produto'),);
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            }
          }
        );
  }
}
