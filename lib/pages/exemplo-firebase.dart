import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:isell/data/settings.dart';

TextEditingController _textController = TextEditingController();

bool carregando = false;

class LearningFirebase extends StatefulWidget {
  const LearningFirebase({Key? key}) : super(key: key);

  @override
  State<LearningFirebase> createState() => _LearningFirebaseState();
}

class _LearningFirebaseState extends State<LearningFirebase> {
  List<String> listStrings = <String>["Nenhum registro encontrado"];
  Uri url = Uri.https(Settings.baseUrl, "/words.json");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Center(
          child: (carregando)
              ? CircularProgressIndicator()
              : RefreshIndicator(
                  onRefresh: () => _getInformationFromBack(),
                  child: ListView(
                    children: [for (String s in listStrings) Text(s)],
                  ),
                ),
        ),
      ),
    );
  }

//on refresh
  Future<void> _getInformationFromBack() {
    return http.get(url).then(
      (response) {
        Map<String, dynamic> map = json.decode(response.body);
        listStrings = [];
        map.forEach((key, value) {
          setState(() {
            listStrings.add(map[key]["word"]);
          });
        });
      },
    );
  }

//post
  void _addStringToBack() {
    setState(() {
      carregando = true;
    });
    http
        .post(
          url,
          body: json.encode(
            {"word": _textController.text},
          ),
        )
        .then((value) => {
              _textController.clear(),
              _getInformationFromBack(),
              setState(() {
                carregando = false;
                final snackbar = SnackBar(content: Text('Gravado com sucesso'));
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              })
            });
  }
}
