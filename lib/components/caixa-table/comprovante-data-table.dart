// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ComprovanteDataTable extends StatelessWidget {
  const ComprovanteDataTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: 20,
      sortColumnIndex: 0,
      sortAscending: true,
      // ignore: prefer_const_literals_to_create_immutables
      columns: [
        DataColumn(label: Text('COD')),
        DataColumn(label: Text('ITEM')),
        DataColumn(label: Text('QTD')),
        DataColumn(label: Text('VALOR')),


      ],
      rows: [
        DataRow(cells: [
          DataCell(Text('0001')),
          DataCell(Text('PRODUTO MEIZÃO')),
          DataCell(Text('3')),
          DataCell(Text('10,00')),

        ]),
        DataRow(cells: [
          DataCell(Text('0001')),
          DataCell(Text('PRODUTO MEIZÃO')),
          DataCell(Text('3')),
          DataCell(Text('10,00')),

        ]),

         DataRow(cells: [
          DataCell(Text('0001')),
          DataCell(Text('PRODUTO MEIZÃO')),
          DataCell(Text('3')),
          DataCell(Text('10,00')),

        ]),
        
        DataRow(cells: [
          DataCell(Text('0001')),
          DataCell(Text('PRODUTO MEIZÃO')),
          DataCell(Text('3')),
          DataCell(Text('10,00')),

        ])
      ],
    );
  }
}
