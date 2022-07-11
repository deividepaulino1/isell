// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:isell/data/services/validatorLogin.dart';
import 'package:validatorless/validatorless.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailEC = TextEditingController();
  final _senhaEC = TextEditingController();
  
@override
  void dispose() {
    _emailEC.dispose();
    _senhaEC.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
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
                            Validatorless.min(6, 'A senha necessita ter pelo menos 6 caracteres'),
                            ValidatorLogin.validaSenha('Senha Inválida')
                          ]),
                          controller: _senhaEC,
                          decoration: InputDecoration(
                            hintText: 'Senha',
                            hintStyle: TextStyle(color: Color.fromRGBO(147, 22, 255, 0.5))
                  
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Esqueceu sua senha?',
                                style: TextStyle(
                                  color: Colors.purple,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  bottom: 40,
                ),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  color: Colors.yellow.shade700,
                  child: TextButton(
                    onPressed: () {
                      _formKey.currentState?.validate();
                      Navigator.pushNamed(context, '/home');
                    }, 
                    child: const Text(
                      'Fazer Login',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 50,
                      child: Image.asset('assets/logotipo/facebook.png')),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 50,
                      child: Image.asset('assets/logotipo/google.png')),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text('Não tem uma conta? '),
            ],
          ),
        ),
      ),
    );
  }
}
