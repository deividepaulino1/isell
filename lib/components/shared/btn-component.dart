import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BtnComponent extends StatelessWidget {
  const BtnComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.orange,
        gradient: LinearGradient(
          colors: [
            Colors.orange.shade400,
            Colors.orange,
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Cadastrar',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
