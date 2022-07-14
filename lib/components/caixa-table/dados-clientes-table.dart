// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DadosClienteTable extends StatelessWidget {
  const DadosClienteTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(

      columns: [
        
        DataColumn(label: Text('Código')),
        DataColumn(label: Text('001'))
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text('CPF:')),
          DataCell(Text('000.000.000-00'))
          
        ]),
        DataRow(cells: [
          DataCell(Text('Rua:')),
          DataCell(Text('11 de Agosto'))
          
        ]),
        DataRow(cells: [
          DataCell(Text('Número:')),
          DataCell(Text('682'))
          
        ]),
        DataRow(cells: [
          DataCell(Text('Bairro:')),
          DataCell(Text('Centro'))
          
        ]),
        DataRow(cells: [
          DataCell(Text('Cidade:')),
          DataCell(Text('Tatuí/SP'))

        ]),
       
      ],
    );
  }
}
