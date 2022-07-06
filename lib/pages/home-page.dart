import 'package:flutter/material.dart';

import 'package:isell/pages/ajustes/ajustes-page.dart';
import 'package:isell/pages/caixa-page.dart';
import 'package:isell/pages/clientes/clientes-page.dart';
import 'package:isell/pages/produtos/produtos-page.dart';
import 'package:isell/pages/vendas/vendas-page.dart';

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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.purple,
          Colors.deepPurple.shade700,
        ])),
        child: Stack(
          children: [
            BottomNavigationBar(
              backgroundColor: Colors.transparent,
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.orange,
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
                const BottomNavigationBarItem(
                  activeIcon: Icon(Icons.assessment),
                  icon: Icon(Icons.assessment_outlined, color: Colors.white),
                  label: 'Vendas',
                ),
                const BottomNavigationBarItem(
                    activeIcon: Icon(Icons.people),
                    icon: Icon(Icons.people_outline),
                    label: 'Clientes'),
                const BottomNavigationBarItem(
                    activeIcon: Icon(Icons.store),
                    icon: Icon(Icons.attach_money_outlined),
                    label: 'Caixa'),
                const BottomNavigationBarItem(
                    activeIcon: Icon(Icons.all_inbox_outlined),
                    icon: Icon(Icons.all_inbox_rounded),
                    label: 'Produtos'),
                const BottomNavigationBarItem(
                    activeIcon: Icon(Icons.settings_applications),
                    icon: Icon(Icons.settings),
                    label: 'Ajustes'),
              ],
            ),
          ],
        ),
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
