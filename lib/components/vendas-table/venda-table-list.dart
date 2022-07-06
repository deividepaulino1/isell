// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class VendasTable extends StatelessWidget {
  const VendasTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      sortColumnIndex: 0,
      sortAscending: true,
      // ignore: prefer_const_literals_to_create_immutables
      columns: [
        DataColumn(numeric: true, label: Text('COO')),
        DataColumn(label: Text('Valor')),
        DataColumn(label: Text('Data')),
        DataColumn(label: Text('Detalhes')),
      ],
      rows: [
        // ignore: prefer_const_literals_to_create_immutables
        DataRow(selected: selected(), cells: [
          DataCell(Text('001')),
          DataCell(Text('49,90')),
          DataCell(Text('06-07-22')),
          DataCell(
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/editarVendas');
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
