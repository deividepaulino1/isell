// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ComprovanteDataTable extends StatelessWidget {
  const ComprovanteDataTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scrollbar(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: BorderSide(
              color: Color.fromRGBO(112, 112, 112, 1),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'Loja do Deivide',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('Rua 11 de Agosto 682 - Centro'),
                Padding(padding: EdgeInsets.only(top: 2)),
                Text('CNPJ: 05.481.336.0001/37'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Data: 14/09/2022 12:01',
                        style: TextStyle(fontSize: 0.23.dp),
                      ),
                      Padding(padding: EdgeInsets.only(right: 30, left: 30)),
                      Text(
                        'Venda: 0010',
                        style: TextStyle(fontSize: 0.23 .dp),
                      )
                    ],
                  ),
                ),
                Text(
                  'Comprovante de Venda',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                DataTable( 
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
                    ]),
                    
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Total: R\$ 40,00',
                  style: TextStyle(
                      color: Color.fromRGBO(147, 22, 255, 1),
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
