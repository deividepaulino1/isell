// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:isell/components/shared/btn-component.dart';
import 'package:isell/components/shared/topBar-component.dart';
import 'package:isell/data/services/produtos.service.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:validatorless/validatorless.dart';

class CadastroProdutos extends StatefulWidget {
  const CadastroProdutos({Key? key}) : super(key: key);

  @override
  State<CadastroProdutos> createState() => _CadastroProdutosState();
}

class _CadastroProdutosState extends State<CadastroProdutos> {
  final _formKey = GlobalKey<FormState>();
  final _nomeProduto = TextEditingController();
  final _descricaoProduto = TextEditingController();
  final _qtdProduto = TextEditingController();
  final _preco = TextEditingController();
  final _codBarras = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color.fromARGB(255, 241, 206, 247), Colors.white],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        )),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              child: Column(
                children: [
                  topBarComponent(
                    titulo: 'Cadastrar Produto',
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Container(
                    width: Adaptive.w(90),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.deepPurple.shade300,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    child: Form(
                      key: _formKey,
                      child: Padding(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _codBarras,
                              decoration: InputDecoration(
                                  hintText: 'Código',
                                  hintStyle: TextStyle(color: Colors.black)),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                              controller: _nomeProduto,
                              validator: Validatorless.required(
                                  'O nome é obrigatório'),
                              decoration: InputDecoration(
                                  hintText: 'Nome do Produto',
                                  hintStyle: TextStyle(color: Colors.black)),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                              controller: _descricaoProduto,
                              decoration: InputDecoration(
                                  hintText: 'Descrição',
                                  hintStyle: TextStyle(color: Colors.black)),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                              controller: _preco,
                              validator: Validatorless.required(
                                  'O preço é obrigatório'),
                              decoration: InputDecoration(
                                  hintText: 'Preço',
                                  hintStyle: TextStyle(color: Colors.black)),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                              controller: _qtdProduto,
                              validator: Validatorless.min(1,
                                  'É preciso ter pelo menos um produto em estoque'),
                              decoration: InputDecoration(
                                  hintText: 'Quantidade',
                                  hintStyle: TextStyle(color: Colors.black)),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Obs: Se a quantidade for vazia, não hávera controle de estoque',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            BtnComponent(
                              gradiente: LinearGradient(colors: [
                                Colors.orange.shade400,
                                Colors.orange,
                              ]),
                              funcao: () async {
                                if (_formKey.currentState!.validate()) {
                                  await ProdutoService().cadastrarProduto(
                                      _nomeProduto.text,
                                      _descricaoProduto.text,
                                      _preco.text,
                                      _qtdProduto.text,
                                      _codBarras.text,
                                      context,
                                      );
                                      _formKey.currentState!.reset();
                                } else {
                                  final snackbar = SnackBar(content: Text('Erro ao gravar os dados'),);
                                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                                }
                              },
                              nome: 'Finalizar Cadastro',
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
