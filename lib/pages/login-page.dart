// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, use_build_context_synchronously

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isell/data/services/login.service.dart';
import 'package:isell/pages/exemplo-signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:validatorless/validatorless.dart';

bool _exibirSenha = true;
bool _isChecked = false;

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

  void exibirSenha() {
    setState(() {
      _exibirSenha = !_exibirSenha;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.purple.shade100, Colors.white],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        )),
        child: SingleChildScrollView(
          child: Center(
            child: AutofillGroup(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image(
                          image: AssetImage('assets/logotipo/logotipo.png')),
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
                                Validatorless.required(
                                    'O E-mail é obrigatório'),
                              ]),
                              controller: _emailEC,
                              decoration: InputDecoration(
                                  hintText: 'E-mail',
                                  hintStyle: TextStyle(
                                      color:
                                          Colors.deepPurple)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              validator: Validatorless.multiple([
                                Validatorless.required('A senha é obrigatória'),
                                Validatorless.min(6,
                                    'A senha necessita ter pelo menos 6 caracteres'),
                              ]),
                              controller: _senhaEC,
                              autofillHints: [AutofillHints.password],
                              onEditingComplete: () =>
                                  TextInput.finishAutofillContext(),
                              obscureText: _exibirSenha,
                              decoration: InputDecoration(
                                  suffixIcon: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          exibirSenha();
                                        });
                                      },
                                      child: Icon((_exibirSenha == false)
                                          ? Icons.remove_red_eye
                                          : Icons.remove_red_eye_outlined)),
                                  hintText: 'Senha',
                                  hintStyle: TextStyle(
                                      color:
                                          Colors.deepPurple)),
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
                                      color: Colors.deepPurple,
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
                          doLogin();
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
                    height: 15,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/cadastro');
                    },
                    child: Text(
                      'Não possui uma conta?',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  doLogin() async {
    final _fazerLogin =
        await LoginService().fazerLogin(_emailEC.text, _senhaEC.text);

    if (_fazerLogin == 200) {
      Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
    }
    if (_fazerLogin != 200) {
      final snackbar = SnackBar(
        content: Text(
          'Erro ao fazer login',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.deepPurple,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }
}
