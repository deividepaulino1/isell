// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:isell/components/clientes-table/clientes-detail.dart';
import 'package:isell/components/shared/btn-component.dart';
import 'package:isell/components/vendas-table/venda-detail.dart';

import '../../components/shared/topBar-component.dart';

class EditarVendasPage extends StatelessWidget {
  const EditarVendasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              topBarComponent(
                titulo: 'Visualizar Venda',
              ),
              DetalhesVenda(),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    BtnComponent(
                      funcao: () {},
                      nome: 'Salvar',
                      gradiente: LinearGradient(
                        colors: [
                          Colors.orange.shade400,
                          Colors.orange,
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    BtnComponent(
                      funcao: () {
                        Navigator.pop(context);
                      },
                      nome: 'Cancelar',
                      gradiente: LinearGradient(
                        colors: [
                          Colors.grey.shade400,
                          Colors.grey.shade600,
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
