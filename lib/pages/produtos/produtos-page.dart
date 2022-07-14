import 'package:flutter/material.dart';
import 'package:isell/components/produtos-table/produtos-table-list.dart';
import 'package:isell/components/shared/btn-component.dart';
import 'package:isell/components/shared/topBar-component.dart';
import 'package:isell/data/settings.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart' as http;
import 'package:accordion/accordion.dart';
import 'dart:convert';

bool carregando = false;

class ProdutosPage extends StatefulWidget {
  const ProdutosPage({Key? key}) : super(key: key);

  @override
  State<ProdutosPage> createState() => _ProdutosPageState();
}

class _ProdutosPageState extends State<ProdutosPage> {
  List<String> codigoBarrasData = <String>["Não há registros"];
  List<String> nomeProdutoData = <String>["Não há registros"];
  List<String> descricaoData = <String>["Não há registros"];
  List<String> precoData = <String>["Não há registros"];
  List<String> qtdData = <String>["Não há registros"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      carregando = true;
    });
    getProdutos();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              topBarComponent(
                titulo: 'Produtos',
              ),
              SizedBox(
                height: 20,
              ),
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  for(String codigoBarras in codigoBarrasData)
                  Accordion(children: [
                    AccordionSection(
                      header: Text(codigoBarras),
                      content: Text('AAAA'),
                    ),
                  ]),
                ],
              ),
              //
              Container(
                  padding: EdgeInsets.only(
                    left: Adaptive.h(5),
                    right: Adaptive.h(5),
                    top: 15,
                  ),
                  child: BtnComponent(
                    funcao: () {
                      Navigator.pushNamed(context, '/cadastroProdutos');
                    },
                    gradiente: LinearGradient(
                      colors: [
                        Colors.orange.shade400,
                        Colors.orange,
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> getProdutos() async {
    Uri url = Uri.https(Settings.baseUrl, '/produtos.json');
    return http.get(url).then((response) {
      Map<String, dynamic> map = json.decode(response.body);
      codigoBarrasData = [];
      nomeProdutoData = [];
      descricaoData = [];
      precoData = [];
      qtdData = [];
      map.forEach((key, value) {
        setState(() {
          codigoBarrasData.add(map[key]['codbarras']);
          nomeProdutoData.add(map[key]['nome']);
          descricaoData.add(map[key]['descricao']);
          precoData.add(map[key]['preco']);
          qtdData.add(map[key]['quantidade']);
          carregando = false;
        });
      });
    });
  }
}
