import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomClienteDataTable extends StatelessWidget {
  const CustomClienteDataTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      sortColumnIndex: 0,
      sortAscending: true,
      // ignore: prefer_const_literals_to_create_immutables
      columns: [
        DataColumn(numeric: true, label: Text('Código')),
        DataColumn(label: Text('001')),
        DataColumn(label: Text('')),
      ],
      rows: [
        // ignore: prefer_const_literals_to_create_immutables
        DataRow(cells: [
          DataCell(Text('Nome:')),
          DataCell(Text('Deivide Paulino')),
          DataCell(
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/editarProdutos');
              },
              child: Icon(
                Icons.edit,
                color: Colors.purple,
              ),
            ),
          ),
        ]),
        DataRow(cells: [
          DataCell(Text('CPF:')),
          DataCell(Text('451.394.758-63')),
          DataCell(
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/editarProdutos');
              },
              child: Icon(
                Icons.edit,
                color: Colors.purple,
              ),
            ),
          ),
        ]),
        DataRow(cells: [
          DataCell(Text('Tipo')),
          DataCell(Text('Pessoa Física')),
          DataCell(
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/editarProdutos');
              },
              child: Icon(
                Icons.edit,
                color: Colors.purple,
              ),
            ),
          ),
        ]),
        DataRow(cells: [
          DataCell(Text('Endereço:')),
          DataCell(Text('15 de novembro')),
          DataCell(
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/editarProdutos');
              },
              child: Icon(
                Icons.edit,
                color: Colors.purple,
              ),
            ),
          ),
        ]),
        DataRow(cells: [
          DataCell(Text('Bairro')),
          DataCell(Text('Lot. Modena')),
          DataCell(
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/editarProdutos');
              },
              child: Icon(
                Icons.edit,
                color: Colors.purple,
              ),
            ),
          ),
        ]),
        DataRow(cells: [
          DataCell(Text('Cidade:')),
          DataCell(Text('Tatuí')),
          DataCell(
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/editarProdutos');
              },
              child: Icon(
                Icons.edit,
                color: Colors.purple,
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
