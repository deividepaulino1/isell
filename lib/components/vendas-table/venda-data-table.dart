import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomVendaDataTable extends StatelessWidget {
  const CustomVendaDataTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      sortColumnIndex: 0,
      sortAscending: true,
      // ignore: prefer_const_literals_to_create_immutables
      columns: [
        DataColumn(numeric: true, label: Text('COO')),
        DataColumn(label: Text('001')),
        DataColumn(label: Text('VU')),
        DataColumn(label: Text('QTD')),
      ],
      rows: [
        // ignore: prefer_const_literals_to_create_immutables
        DataRow(cells: [
          DataCell(Text('Produto:')),
          DataCell(Text('PRODUTO TESTE')),
          DataCell(Text('R\$ 5,00')),
          DataCell(Text('05')),
        ]),
        DataRow(cells: [
          DataCell(Text('Produto:')),
          DataCell(Text('PRODUTO TESTE')),
          DataCell(Text('R\$ 5,00')),
          DataCell(Text('02')),
        ]),
        DataRow(cells: [
          DataCell(Text('Produto:')),
          DataCell(Text('PRODUTO TESTE')),
          DataCell(Text('R\$ 5,00')),
          DataCell(Text('03')),
        ]),
        DataRow(cells: [
          DataCell(Text('Produto:')),
          DataCell(Text('PRODUTO TESTE')),
          DataCell(Text('R\$ 5,00')),
          DataCell(Text('03')),
        ]),
        DataRow(cells: [
          DataCell(Text('Produto:')),
          DataCell(Text('PRODUTO TESTE')),
          DataCell(Text('R\$ 5,00')),
          DataCell(Text('03')),
        ]),
        DataRow(cells: [
          DataCell(Text('Produto:')),
          DataCell(Text('PRODUTO TESTE')),
          DataCell(Text('R\$ 5,00')),
          DataCell(Text('1')),
        ]),
      ],
    );
  }
}
