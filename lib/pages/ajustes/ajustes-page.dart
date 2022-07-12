import 'package:flutter/material.dart';
import 'package:isell/components/shared/card-component.dart';
import 'package:isell/components/shared/topBar-component.dart';

class AjustesPage extends StatelessWidget {
  const AjustesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              topBarComponent(
                titulo: 'Ajustes',
              ),
              SizedBox(
                height: 30,
              ),
              CardComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
