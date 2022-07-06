// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProdutosTable extends StatelessWidget {
  const ProdutosTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      sortColumnIndex: 0,
      sortAscending: true,
      // ignore: prefer_const_literals_to_create_immutables
      columns: [
        DataColumn(numeric: true, label: Text('Código')),
        DataColumn(label: Text('Nome')),
        DataColumn(label: Text('')),
      ],
      rows: [
        // ignore: prefer_const_literals_to_create_immutables
        DataRow(selected: selected(), cells: [
          DataCell(Text('001')),
          DataCell(Text('Maçã Verde')),
          DataCell(
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/editarProdutos');
              },
              child: Icon(
                Icons.info_outlined,
                color: Colors.purple,
              ),
            ),
          ),
        ]),
      ],
    );
  }
}

selected() {
  bool select = false;
  onTap() {
    select = !select;
  }

  return select;
}
