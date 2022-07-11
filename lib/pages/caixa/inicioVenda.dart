// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:isell/components/shared/topBar-component.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class InicioVenda extends StatelessWidget {
  const InicioVenda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              topBarComponent(
                titulo: 'Informe os produtos',
              ),
              SizedBox(
                height: 40,
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
                        color: Color.fromRGBO(255, 213, 3, 1),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Card(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      'Loja do Deivide',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Text(
                      'Rua 11 de Agosto 682 - Centro',
                    ),
                     Padding(padding: EdgeInsets.only(top: 5)),
                    Text(
                      'Loja do Deivide',
                    ),
                    Container(
                      height: Adaptive.h(40),
                      width: Adaptive.w(90),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
