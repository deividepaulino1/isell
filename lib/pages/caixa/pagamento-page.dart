// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:isell/components/shared/box-btn-component.dart';
import 'package:isell/components/shared/btn-component.dart';
import 'package:isell/components/shared/topBar-component.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PagamentoPage extends StatelessWidget {
  const PagamentoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: topBarComponent(
                titulo: 'Pagamento',
              ),
            ),
            SizedBox(height: Adaptive.h(5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BoxButton(
                  corBtn: Color.fromRGBO(147, 22, 255, 1),
                  corFonte: Colors.white,
                  funcao: () {},
                  icone: FontAwesomeIcons.moneyBillWave,
                  nome: 'Dinheiro',
                ),
                 BoxButton(
                  corBtn: Color.fromRGBO(147, 22, 255, 1),
                  corFonte: Colors.white,
                  funcao: () {},
                  icone: FontAwesomeIcons.creditCard,
                  nome: 'Cartão',
                ),
              ],
            ),
            SizedBox(height: Adaptive.h(4)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 BoxButton(
                  corBtn: Color.fromRGBO(147, 22, 255, 1),
                  corFonte: Colors.white,
                  funcao: () {},
                  icone: FontAwesomeIcons.pix,
                  nome: 'Pix',
                ),
                 BoxButton(
                  corBtn: Color.fromRGBO(147, 22, 255, 1),
                  corFonte: Colors.white,
                  funcao: () {},
                  icone: FontAwesomeIcons.calendar,
                  nome: 'A Prazo',
                ),
              ],
            ),
            SizedBox(
              height: Adaptive.h(2),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 30),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Digite o Valor',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(147, 22, 255, 1),
                  ),
                  suffixIcon: Icon(
                    Icons.arrow_forward,
                    color: Color.fromARGB(255, 218, 197, 12),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Adaptive.h(5),
            ),
            Text(
              'A PAGAR: R\$ 40,00',
              style: TextStyle(
                  color: Color.fromRGBO(147, 22, 255, 1),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: Adaptive.h(2),
            ),
            SizedBox(
              width: Adaptive.w(80),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  side: BorderSide(
                    color: Color.fromRGBO(112, 112, 112, 1),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 17, left: 8, right: 8),
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
                            textAlign: TextAlign.end,
                          )
                        ],
                      ),
                      Container(
                        height: Adaptive.h(2),
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
                  nome: "Finalizar",
                  gradiente: LinearGradient(colors: [
                    Colors.orange,
                    Colors.orange.shade400,
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
