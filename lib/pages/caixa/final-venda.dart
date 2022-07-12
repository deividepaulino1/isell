// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:isell/components/caixa-table/comprovante-data-table.dart';
import 'package:isell/components/shared/btn-component.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FinalVenda extends StatelessWidget {
  const FinalVenda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column
                // ignore: prefer_const_literals_to_create_immutables
                (children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'VENDA FINALIZADA',
                  style: TextStyle(
                    color: Color.fromRGBO(147, 22, 255, 0.8),
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  'Resumo do Pedido',
                  style: TextStyle(
                    color: Color.fromRGBO(5, 5, 5, 0.6),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: Adaptive.h(60),
                width: Adaptive.w(80),
                child: ComprovanteDataTable(),
              ),
              Text(
                'TROCO',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  side: BorderSide(
                    color: Color.fromRGBO(112, 112, 112, 1),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 17, left: 8, right: 8),
                  child: Container(
                    width: Adaptive.w(70),
                    height: Adaptive.h(17),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            // Padding(padding: EdgeInsets.all(6)),
                            Text(
                              'Pagamento',
                              textAlign: TextAlign.start,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 5, bottom: 40)),
                            Text(
                              'R\$ 10,00',
                              textAlign: TextAlign.start,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 5, bottom: 40)),
                            Text(
                              'Cartão',
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            // Padding(padding: EdgeInsets.all(6)),
                            Text(
                              'Pagamento',
                              textAlign: TextAlign.start,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 5, bottom: 40)),
                            Text(
                              'R\$ 10,00',
                              textAlign: TextAlign.start,
                            ),
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Text(
                              'Cartão',
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            // Padding(padding: EdgeInsets.all(6)),
                            Text(
                              'Total Pago:',
                              textAlign: TextAlign.start,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 30, right: 100)),
                            Text(
                              '20,00',
                              textAlign: TextAlign.start,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 64,
                width: 348,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
                  child: BtnComponent(
                    funcao: () {
                      Navigator.pushNamed(context, '/finalVenda');
                    },
                    nome: "Imprimir Comprovante",
                    gradiente: LinearGradient(colors: [
                      Colors.orange,
                      Colors.orange.shade400,
                    ]),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Text(
                    'Voltar ao menu',
                    style: TextStyle(color: Colors.grey),
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}
