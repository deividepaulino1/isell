// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:isell/components/caixa-table/comprovante-data-table.dart';
import 'package:isell/components/shared/btn-component.dart';
import 'package:isell/components/shared/topBar-component.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class InicioVenda extends StatelessWidget {
  const InicioVenda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                topBarComponent(
                  titulo: 'Informe os produtos',
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintText: 'Digite o código ou nome do produto',
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(147, 22, 255, 0.8),
                          fontWeight: FontWeight.bold),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        // ignore: prefer_const_constructors
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      width: Adaptive.w(80),
                      height: Adaptive.h(55),
                      child: ListView(
                        children: [
                          ComprovanteDataTable(),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                SizedBox(height: 5),
                SizedBox(height: 5),
                SizedBox(
                  height: 50,
                  width: 348,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: BtnComponent(
                      funcao: () {
                        Navigator.pushNamed(context, '/pagamento');
                      },
                      nome: "Confirmar",
                      gradiente: LinearGradient(colors: [
                        Colors.orange,
                        Colors.orange.shade400,
                      ]),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  height: 50,
                  width: 348,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: BtnComponent(
                      funcao: () {
                        Navigator.pushNamed(context, '/inserirClientes');
                      },
                      nome: "Alterar Cliente",
                      // ignore: prefer_const_literals_to_create_immutables
                      gradiente: LinearGradient(colors: [
                        Colors.grey,
                        Colors.grey,
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
