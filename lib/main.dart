import 'package:flutter/material.dart';
import 'package:isell/pages/ajustes-page.dart';
import 'package:isell/pages/caixa/busca-cliente.dart';
import 'package:isell/pages/caixa/caixa-page.dart';
import 'package:isell/pages/clientes-page.dart';
import 'package:isell/pages/caixa-page.dart';
import 'package:isell/pages/clientes/editarClientes-page.dart';
import 'package:isell/pages/home-page.dart';
import 'package:isell/pages/login-page.dart';
import 'package:isell/pages/produtos/editarProdutos-page.dart';
import 'package:isell/pages/vendas-page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
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


              case '/home':
                return PageTransition(
                  child: HomePage(),
                  //aqui define o tipo de animação de transição de tela
                  type: PageTransitionType.fade,
                  settings: settings,
                );

              case '/editarProdutos':
                return PageTransition(
                  child: EditarProdutosPage(),
                  //aqui define o tipo de animação de transição de tela
                  type: PageTransitionType.leftToRight,
                  settings: settings,
                );
              case '/editarClientes':
                return PageTransition(
                  child: EditarClientesPage(),
                  //aqui define o tipo de animação de transição de tela
                  type: PageTransitionType.rightToLeft,
                  settings: settings,
                );

                case '/caixa/clientes':
                return PageTransition(
                  child: BuscaClientePage(),
                  type: PageTransitionType.leftToRight,
                  settings: settings,
                );

              default:
                return null;
            }
          },
        );
      },
    );
  }
}
