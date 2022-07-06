import 'package:flutter/material.dart';
import 'package:isell/components/clientes-table/clientes-table-list.dart';
import 'package:isell/components/shared/btn-component.dart';
import 'package:isell/components/shared/topBar-component.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../components/vendas-table/venda-table-list.dart';

class VendasPage extends StatelessWidget {
  const VendasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              topBarComponent(
                titulo: 'Vendas',
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Container(
                  height: Adaptive.h(60),
                  width: Adaptive.w(90),
                  child: VendasTable(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
