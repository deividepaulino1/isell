// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:isell/components/shared/topBar-component.dart';

class SearchClientPage extends StatelessWidget {
  const SearchClientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              topBarComponent(
                titulo: 'Inserir Cliente',
              ),
              Padding(padding: EdgeInsets.only(top: 250)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 20),
                    child: TextFormField( 
                               
                      textAlignVertical: TextAlignVertical.bottom,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                          hintText: 'Informe o Cliente', hintStyle: TextStyle(fontWeight: FontWeight.bold ,color: Color.fromRGBO(147, 22, 255, 0.8)),  
                          suffixIcon: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/inicioVenda');
                            },
                            icon: Icon(
                              Icons.arrow_forward,
                              color: Color.fromRGBO(255, 213, 3, 1),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
