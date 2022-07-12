// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:isell/components/shared/btn-component.dart';
import 'package:isell/components/shared/topBar-component.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:validatorless/validatorless.dart';

import '../../data/services/validatorLogin.dart';

bool validaSnackBar = true;

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final _formKey = GlobalKey<FormState>();
  final _emailEC = TextEditingController();
  final _senhaEC = TextEditingController();
  var _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  void dispose() {
    _emailEC.dispose();
    _senhaEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Center(
          child: SafeArea(
            child: Column(children: [
              topBarComponent(titulo: 'Cadastre-se'),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Container(
                  height: 200,
                  width: 200,
                  child:
                      Image(image: AssetImage('assets/logotipo/logotipo.png')),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 30),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: Validatorless.multiple([
                            Validatorless.required('O E-mail é obrigatório'),
                            ValidatorLogin.validaEmail('E-mail Inválido')
                          ]),
                          controller: _emailEC,
                          decoration: InputDecoration(
                              hintText: 'E-mail',
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(147, 22, 255, 0.5))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: Validatorless.multiple([
                            Validatorless.required('A senha é obrigatória'),
                            Validatorless.min(6,
                                'A senha necessita ter pelo menos 6 caracteres'),
                            ValidatorLogin.validaSenha('Senha Inválida')
                          ]),
                          controller: _senhaEC,
                          decoration: InputDecoration(
                              hintText: 'Senha',
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(147, 22, 255, 0.5))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: Adaptive.w(85),
                height: 60,
                color: Colors.yellow.shade700,
                child: TextButton(
                  onPressed: () {
                    
                  },
                  child: const Text(
                    'Finalizar Cadastro',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: (){
                    }
                  , child: Text('Cancelar')),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

//(condicao)? true : false
