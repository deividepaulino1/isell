// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:isell/components/caixa-table/dados-clientes-table.dart';
import 'package:isell/components/shared/btn-component.dart';
import 'package:isell/components/shared/topBar-component.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DadosClientePage extends StatelessWidget {
  const DadosClientePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              topBarComponent(
                titulo: 'Dados do Cliente',
              ),
              Padding(padding: EdgeInsets.only(top: 100)),
              Text(
                'Daniel Manoel',
                style: TextStyle(
                  color: Color.fromRGBO(147, 22, 255, 1),
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  side: BorderSide(
                    color: Color.fromRGBO(112, 112, 112, 1),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: Adaptive.h(40),
                      width: Adaptive.w(90),
                      child: DadosClienteTable(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              
              Column(
                children: [
                  SizedBox(
                    width: 348,
                    child: BtnComponent(
                      funcao: () {
                        Navigator.pushNamed(context, '/inicioVenda');
                      },
                      nome: "Confirmar",
                      gradiente: LinearGradient(colors: [
                        Colors.orange,
                        Colors.orange.shade400,
                      ]),
                    ),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    width: 348,
                    child: BtnComponent(
                      funcao: () {
                        Navigator.pop(context);
                      },
                      nome: "Alterar Cliente",
                      // ignore: prefer_const_literals_to_create_immutables
                      gradiente: LinearGradient(colors: [
                        Colors.grey,
                        Colors.grey,
                      ]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
