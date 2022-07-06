import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:isell/components/produtos-table/data-table.dart';
import 'package:isell/components/shared/btn-component.dart';

class DetalhesProduto extends StatelessWidget {
  const DetalhesProduto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          CustomDataTable(),
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
