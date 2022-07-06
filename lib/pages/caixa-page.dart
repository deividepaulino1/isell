// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:isell/pages/ajustes-page.dart';
import 'package:isell/pages/clientes-page.dart';
import 'package:isell/pages/produtos-page.dart';
import 'package:isell/pages/vendas-page.dart';

class CaixaPage extends StatefulWidget {
  const CaixaPage({Key? key}) : super(key: key);

  @override
  State<CaixaPage> createState() => _CaixaPageState();
}

class _CaixaPageState extends State<CaixaPage> {
  @override
  int _selectedIndex = 2;

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/');
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logotipo/logotipo.png',
                  width: 200,
                  height: 200,
                ),
                Padding(padding: EdgeInsets.all(60)),
                Text(
                  'CAIXA LIVRE',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Color.fromRGBO(147, 22, 255, 1)),
                ),
                Text(
                  'Toque para Vender',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromRGBO(111, 108, 110, 0.5)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
