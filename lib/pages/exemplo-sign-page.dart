import 'package:flutter/material.dart';
import 'package:isell/pages/exemplo-signup.dart';

class SignPage extends StatefulWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  Key? _formKey;
  final _loginController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              controller: _loginController,
            ),
            TextFormField(
              controller: _senhaController,
            ),
            ElevatedButton(
                onPressed: () {
                  SignupService()
                      .signup(_loginController.text, _senhaController.text);
                },
                child: Text('Confirmar')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancelar')),
          ],
        ),
      ),
    );
  }
}
