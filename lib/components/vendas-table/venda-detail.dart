import 'package:flutter/material.dart';
import 'package:isell/components/clientes-table/cliente-data-table.dart';
import 'package:isell/components/shared/btn-component.dart';
import 'package:isell/components/vendas-table/venda-data-table.dart';

class DetalhesVenda extends StatelessWidget {
  const DetalhesVenda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          CustomVendaDataTable(),
          Container(
            height: 60,
            child: Padding(
              padding: EdgeInsets.only(
                left: 40,
                right: 40,
                top: 10,
                bottom: 10,
              ),
              child: Text(
                'Total: R\$ 30,00',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
