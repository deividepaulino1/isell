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

      body: SafeArea(
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
                        color: Color.fromARGB(255, 138, 122, 41),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: Adaptive.w(90),

                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(
                        color: Color.fromRGBO(112, 112, 112, 1),
                      )),
                  child: Column(
                    
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        child: Text(
                          'Loja do Deivide',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        'Rua 11 de Agosto 682 - Centro',
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        'CNPJ: 05.481.336.0001/37',
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Data: 14/09/2022 12:01",
                            style: TextStyle(fontSize: 14),
                          ),
                          Padding(padding: EdgeInsets.only(left: 45, right: 45)),
                          Text('Venda: 0010', style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Comprovante de Venda',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        
                        height: Adaptive.h(30),
                        width: Adaptive.w(90),
                        child: ComprovanteDataTable(),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'TOTAL: 40,00',
                          style: TextStyle(
                              color: Color.fromRGBO(147, 22, 255, 1),
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
                
              ),
                  SizedBox(height: 5),

              SizedBox(
                    height: 50,
                    width: 348,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10 , left: 10),
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
                      padding: const EdgeInsets.only(right: 10 ,  left: 10),
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
    ));
  }
}
