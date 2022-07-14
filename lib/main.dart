import 'package:flutter/material.dart';
import 'package:isell/components/theme/themeChanger.dart';
import 'package:isell/pages/caixa/clientes-page.dart';
import 'package:isell/pages/caixa/inicioVenda.dart';
import 'package:isell/pages/clientes/cadastrar-cliente-page.dart';
import 'package:isell/pages/clientes/editarClientes-page.dart';
import 'package:isell/pages/home-page.dart';
import 'package:isell/pages/exemplo-firebase.dart';
import 'package:isell/pages/login-page.dart';
import 'package:isell/pages/produtos/editarProdutos-page.dart';
import 'package:isell/pages/exemplo-sign-page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'pages/caixa/dados-cliente-page.dart';
import 'pages/caixa/pagamento-page.dart';
import 'pages/vendas/visualizar-venda-page.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeChanger>(
          create: (_) => ThemeChanger(),
        )
      ],
      child: iSell(),
    ));

class iSell extends StatelessWidget {
  const iSell({Key? key}) : super(key: key);

  // This widget is the root of your application.
  Widget build(BuildContext context) {
    bool darkThemeEnabled = Provider.of<ThemeChanger>(context).isDark();

    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'iSell, seu pdv mobile',
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
              case '/editarVendas':
                return PageTransition(
                  child: EditarVendasPage(),
                  //aqui define o tipo de animação de transição de tela
                  type: PageTransitionType.rightToLeft,
                  settings: settings,
                );

              case '/caixa/clientes':
                return PageTransition(
                  child: SearchClientPage(),
                  type: PageTransitionType.rightToLeft,
                  settings: settings,
                );

              case '/inicioVenda':
                return PageTransition(
                  child: InicioVenda(),
                  type: PageTransitionType.rightToLeft,
                  settings: settings,
                );

              case '/inserirClientes':
                return PageTransition(
                  child: SearchClientPage(),
                  type: PageTransitionType.rightToLeft,
                  settings: settings,
                );

              case '/dadosCliente':
                return PageTransition(
                  child: DadosClientePage(),
                  type: PageTransitionType.rightToLeft,
                  settings: settings,
                );

              // ignore: no_duplicate_case_values
              case '/inicioVenda':
                return PageTransition(
                  child: const InicioVenda(),
                  type: PageTransitionType.rightToLeft,
                  settings: settings,
                );

              case '/pagamento':
                return PageTransition(
                  child: const PagamentoPage(),
                  type: PageTransitionType.rightToLeft,
                  settings: settings,
                );
              case '/registrar':
                return PageTransition(
                  child: const SignPage(),
                  type: PageTransitionType.rightToLeft,
                  settings: settings,
                );

              case '/cadastrar':
                return PageTransition(
                  child: const CadastrarCliente(),
                  type: PageTransitionType.rightToLeft,
                  settings: settings,
                );

              default:
                return null;
            }
          },
          theme: ThemeChanger().light,
          darkTheme: ThemeChanger().dark,
          themeMode: darkThemeEnabled ? ThemeMode.dark : ThemeMode.light,
        );
      },
    );
  }
}
