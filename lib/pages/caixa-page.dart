// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

<<<<<<< HEAD:lib/pages/home-page.dart
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
=======
class CaixaPage extends StatelessWidget {
  const CaixaPage({Key? key}) : super(key: key);
>>>>>>> 5946a521a7b4573d92e767fd386c5a91d32231d2:lib/pages/caixa-page.dart

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD:lib/pages/home-page.dart
      appBar: AppBar(
        title: Text('iSell'),
      ),
      body: PageView(
        controller: PageController(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (select) {
          setState(() {
            _selectedIndex = select;
          });
        },
        type: BottomNavigationBarType.fixed,        
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.assessment_outlined), label: 'Vendas'),
          BottomNavigationBarItem(icon: Icon(Icons.people_outline),label:'Clientes'),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money_outlined),label:'Caixa'),
          BottomNavigationBarItem(icon: Icon(Icons.all_inbox_rounded),label:'Produtos'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label:'Produtos'),


        ],
=======
      body: Center(
        child: Text('Caixa page'),
>>>>>>> 5946a521a7b4573d92e767fd386c5a91d32231d2:lib/pages/caixa-page.dart
      ),
    );
  }
}
