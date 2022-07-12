import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:isell/components/shared/btn-component.dart';
import 'package:isell/components/shared/topBar-component.dart';
import 'package:isell/data/services/clientes.service.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:validatorless/validatorless.dart';

class CadastrarCliente extends StatefulWidget {
  const CadastrarCliente({Key? key}) : super(key: key);

  @override
  State<CadastrarCliente> createState() => _CadastrarClienteState();
}

class _CadastrarClienteState extends State<CadastrarCliente> {
  final _formKey = GlobalKey<FormState>();
  final _nomeCliente = TextEditingController();
  final _cpfCliente = TextEditingController();
  final _enderecoCliente = TextEditingController();
  final _bairroCliente = TextEditingController();
  final _cidadeCliente = TextEditingController();
  final _emailCliente = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              topBarComponent(
                titulo: 'Cadastrar cliente',
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.all(40),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nomeCliente,
                        validator:
                            Validatorless.required('O nome é obrigatório'),
                        decoration: InputDecoration(
                          hintText: 'Nome',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _cpfCliente,
                        validator: Validatorless.cpf('CPF inválildo'),
                        decoration: InputDecoration(
                          hintText: 'CPF',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _enderecoCliente,
                        validator: Validatorless.min(
                            6, 'Preencha corretamente o endereço'),
                        decoration: InputDecoration(
                          hintText: 'Endereco',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _bairroCliente,
                        validator:
                            Validatorless.required('O Bairro é obrigatório'),
                        decoration: InputDecoration(
                          hintText: 'Bairro',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _cidadeCliente,
                        validator:
                            Validatorless.required('A cidade é obrigatório'),
                        decoration: InputDecoration(
                          hintText: 'Cidade',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _emailCliente,
                        validator: Validatorless.email('Emáil inválido'),
                        decoration: InputDecoration(
                          hintText: 'Email',
                        ),
                      ),
                      SizedBox(
                        height: Adaptive.h(15),
                      ),
                      BtnComponent(
                          gradiente: LinearGradient(
                            colors: [
                              Colors.orange.shade400,
                              Colors.orange,
                            ],
                          ),
                          funcao: () async {
                            if (_formKey.currentState!.validate()) {
                              await ClienteService().cadastrarCliente(
                                _nomeCliente.text,
                                _cpfCliente.text,
                                _enderecoCliente.text,
                                _bairroCliente.text,
                                _cidadeCliente.text,
                                _emailCliente.text,
                                context,
                              );
                              _formKey.currentState!.reset();
                            } else {
                              final snackbar = SnackBar(
                                  content: Text('Erro ao gravar os dados'));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackbar);
                            }
                          }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
