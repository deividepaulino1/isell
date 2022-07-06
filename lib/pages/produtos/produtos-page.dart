import 'package:flutter/material.dart';
import 'package:isell/components/produtos-table/produtos-table-list.dart';
import 'package:isell/components/shared/btn-component.dart';
import 'package:isell/components/shared/topBar-component.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProdutosPage extends StatelessWidget {
  const ProdutosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              topBarComponent(
                titulo: 'Produtos',
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Container(
                  height: Adaptive.h(60),
                  width: Adaptive.w(90),
                  child: ProdutosTable(),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(
                    left: Adaptive.h(5),
                    right: Adaptive.h(5),
                    top: 15,
                  ),
                  child: BtnComponent(
                    funcao: () {},
                    gradiente: LinearGradient(
                      colors: [
                        Colors.orange.shade400,
                        Colors.orange,
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
