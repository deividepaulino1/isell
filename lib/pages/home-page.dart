import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:isell/pages/ajustes-page.dart';
import 'package:isell/pages/caixa-page.dart';
import 'package:isell/pages/clientes-page.dart';
import 'package:isell/pages/produtos-page.dart';
import 'package:isell/pages/vendas-page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int _selectedIndex = 2;

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (
          select,
        ) {
          setState(() {
            _selectedIndex = select;
          });
        },
        type: BottomNavigationBarType.fixed,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment_outlined),
            label: 'Vendas',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_outline), label: 'Clientes'),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money_outlined), label: 'Caixa'),
          BottomNavigationBarItem(
              icon: Icon(Icons.all_inbox_rounded), label: 'Produtos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Produtos'),
        ],
      ),
      body: SingleChildScrollView(child: routes(_selectedIndex)),
    );
  }
}

Widget routes(index) {
  switch (index) {
    case 0:
      return VendasPage();
    case 1:
      return ClientesPage();
    case 2:
      return CaixaPage();
    case 3:
      return ProdutosPage();
    case 4:
      return AjustesPage();
    default:
      return CaixaPage();
  }
}
