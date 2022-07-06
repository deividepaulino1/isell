import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomDataTable extends StatelessWidget {
  const CustomDataTable({Key? key}) : super(key: key);

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
          DataCell(Text('Maçã Verde')),
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
          DataCell(Text('Descrição:')),
          DataCell(Text('Descrição aqui')),
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
          DataCell(Text('Preço')),
          DataCell(Text('RS 49,90')),
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
          DataCell(Text('Fornecedor')),
          DataCell(Text('DJSYSTEM')),
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
          DataCell(Text('CNPJ:')),
          DataCell(Text('05.481.336.0001/37')),
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
          DataCell(Text('Estoque:')),
          DataCell(Text('90')),
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
