// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:isell/data/services/login.service.dart';
import 'package:isell/pages/exemplo-signup.dart';
import 'package:validatorless/validatorless.dart';

bool _exibirSenha = true;

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
                            Validatorless.email('Email digitado é inválido'),
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
                            Validatorless.min(
                                6, 'Deve conter pelo menos 6 caracteres'),
                          ]),
                          controller: _senhaEC,
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
                                  color: Color.fromRGBO(147, 22, 255, 0.5))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                AlertDialog alert = AlertDialog(
                                  title: Text('Recuperar senha'),
                                  content: Text('Tá anotada no caderninho'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return alert;
                                  },
                                );
                              },
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
                      if (_formKey.currentState!.validate()) {
                        doLogin();
                      } else {
                        return;
                      }
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
              TextButton(
                child: Text('Não tem uma conta? '),
                onPressed: () {
                  Navigator.pushNamed(context, '/registrar');
                },
              ),
            ],
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
          'Usuário ou senha inválidos',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.deepPurple,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }
}
