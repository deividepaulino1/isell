import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:isell/components/shared/btn-component.dart';
import 'package:isell/components/shared/topBar-component.dart';
import 'package:isell/data/settings.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

bool carregando = false;

class ClientesPage extends StatefulWidget {
  const ClientesPage({Key? key}) : super(key: key);

  @override
  State<ClientesPage> createState() => _ClientesPageState();
}

class _ClientesPageState extends State<ClientesPage> {
  List<String> nomeData = <String>["Não há registros"];
  List<String> cpfData = <String>["Não há registros"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      carregando = true;
    });
    getClientes();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            topBarComponent(
              titulo: 'Clientes',
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              child: (carregando)
                  ? Container(
                      height: 80,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : Center(
                      child: RefreshIndicator(
                        onRefresh: () => getClientes(),
                        child: ListView(
                          children: [
                            for (String clientes in nomeData) Text(clientes),
                            for (String clienteCPF in cpfData) Text(clienteCPF),
                          ],
                        ),
                      ),
                    ),
            ),
            // Card(
            //   child: Container(
            //     height: Adaptive.h(60),
            //     width: Adaptive.w(90),
            //     child: ClientesTable(),
            //   ),
            // ),
            Container(
                padding: EdgeInsets.only(
                  left: Adaptive.h(5),
                  right: Adaptive.h(5),
                  top: 15,
                ),
                child: BtnComponent(
                  funcao: () {
                    Navigator.pushNamed(context, '/cadastrar');
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
    );
  }

  Future<void> getClientes() async {
    Uri url = Uri.https(Settings.baseUrl, '/clientes.json');
    return http.get(url).then(
      (response) {
        Map<String, dynamic> map = json.decode(response.body);
        nomeData = [];
        cpfData = [];
        map.forEach((key, value) {
          setState(() {
            nomeData.add(map[key]["nome"]);
            cpfData.add(map[key]["cpf"]);
            carregando = false;
          });
        });
      },
    );
  }
}
