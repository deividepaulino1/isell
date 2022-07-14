// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BoxButton extends StatelessWidget {
  String nome;
  Color corBtn;
  Color corFonte;
  IconData icone;
  
  void Function() funcao;

  BoxButton({
    Key? key,
    this.nome = 'Box Button',
    required this.corBtn,
    required this.corFonte,
    required this.funcao,
    required this.icone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: funcao,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            color: corBtn,
            border: Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Icon(icone, color: Colors.white, size: 38, ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            Text(
              nome,
              style: TextStyle(fontSize: 20, color: corFonte),
            )
          ],
        ),
      ),
    );
  }
}
