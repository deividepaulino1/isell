// ignore_for_file: avoid_init_to_null

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BtnComponent extends StatelessWidget {
  String nome;
  LinearGradient gradiente;
  void Function() funcao;

  BtnComponent({
    Key? key,
    this.nome = 'Cadastrar',
    required this.gradiente,
    required this.funcao,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: gradiente,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: TextButton(
        onPressed: funcao,
        child: Text(
          nome,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
