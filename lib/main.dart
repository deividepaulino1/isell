import 'package:flutter/material.dart';
import 'package:isell/pages/ajustes-page.dart';
import 'package:isell/pages/caixa-page.dart';
import 'package:isell/pages/clientes-page.dart';
import 'package:isell/pages/login-page.dart';
import 'package:isell/pages/produtos-page.dart';
import 'package:isell/pages/vendas-page.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iSell, seu pdv mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) {
        //rotas aqui, seguir este swich
        switch (settings.name) {
          case '/':
            return PageTransition(
              child: LoginPage(),
              //aqui define o tipo de animação de transição de tela
              type: PageTransitionType.fade,
              settings: settings,
            );

          case '/vendas':
            return PageTransition(
              child: VendasPage(),
              //aqui define o tipo de animação de transição de tela
              type: PageTransitionType.fade,
              settings: settings,
            );

          case '/clientes':
            return PageTransition(
              child: ClientesPage(),
              //aqui define o tipo de animação de transição de tela
              type: PageTransitionType.fade,
              settings: settings,
            );

          case '/caixa':
            return PageTransition(
              child: CaixaPage(),
              //aqui define o tipo de animação de transição de tela
              type: PageTransitionType.fade,
              settings: settings,
            );

          case '/produtos':
            return PageTransition(
              child: ProdutosPage(),
              //aqui define o tipo de animação de transição de tela
              type: PageTransitionType.fade,
              settings: settings,
            );

          case '/ajustes':
            return PageTransition(
              child: AjustesPage(),
              //aqui define o tipo de animação de transição de tela
              type: PageTransitionType.fade,
              settings: settings,
            );

          default:
            return null;
        }
      },
    );
  }
}
