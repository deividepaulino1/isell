// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, dead_code, unused_element, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:isell/components/shared/btn-component.dart';
import 'package:isell/components/shared/topBar-component.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:validatorless/validatorless.dart';

import '../../data/services/login.service.dart';

bool _exibirSenha = true;

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
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
                    doCadastro(context);
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
                  TextButton(onPressed: () {
                    Navigator.pop(context);
                  }, child: Text('Cancelar')),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  } 
  doCadastro(context) async {
      final _fazerRegistro =
          await LoginService().fazerCadastro(_emailEC.text, _senhaEC.text);

      if (_fazerRegistro == 200) {
        print(_fazerRegistro);
        final snackbar = SnackBar(
          content: Text(
            'Cadastro realizado com sucesso!',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.deepPurple,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
        Navigator.pop(context);
      }
      if (_fazerRegistro != 200) {
        print(_fazerRegistro);
        final snackbar2 = SnackBar(
          content: Text(
            'Erro ao realizar cadastro!',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.grey,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackbar2);
      }
}
}