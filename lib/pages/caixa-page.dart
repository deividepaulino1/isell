// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
      child: Text('Caixa'),
    );
  }
}
