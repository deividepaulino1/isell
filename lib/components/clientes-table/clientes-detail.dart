import 'package:flutter/material.dart';
import 'package:isell/components/clientes-table/cliente-data-table.dart';
import 'package:isell/components/shared/btn-component.dart';

class DetalhesCliente extends StatelessWidget {
  const DetalhesCliente({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          CustomClienteDataTable(),
          Container(
              height: 60,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 40,
                  right: 40,
                  top: 10,
                  bottom: 10,
                ),
                child: BtnComponent(
                  funcao: () {},
                  nome: 'Excluir',
                  gradiente: LinearGradient(
                    colors: [
                      Colors.red,
                      Colors.red.shade800,
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
