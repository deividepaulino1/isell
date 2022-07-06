import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class topBarComponent extends StatelessWidget {
  String titulo;
  topBarComponent({
    Key? key,
    this.titulo = 'titulo',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.purple,
            Colors.deepPurpleAccent.shade700,
          ],
        ),
      ),
      child: Center(
          child: Text(
        titulo,
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      )),
    );
  }
}
