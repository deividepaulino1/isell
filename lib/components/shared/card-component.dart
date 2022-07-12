// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:isell/components/shared/accordion-component.dart';
import 'package:provider/provider.dart';

import '../theme/themeChanger.dart';
import '../theme/themedata.dart';

class CardComponent extends StatelessWidget {
  CardComponent({Key? key}) : super(key: key);

  var themeChanger = new ThemeChanger();

  @override
  Widget build(BuildContext context) {
    themeChanger = Provider.of<ThemeChanger>(context);

    return Center(
      child: Card(
        child: Column(
          children: [
            Text(
              'Temas',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Tema Claro'),
                Switch(
                    value: themeChanger.isDark(),
                    onChanged: (status) {
                      themeChanger.setDarkMode(status);
                    }),
              ],
            ),
            AccordionComponent(
              title: 'Tema customizado',
              content: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  AccordionComponent(
                    title: 'Cor Primária',
                    content: SelecionarCor(),
                  ),
                  AccordionComponent(
                    title: 'Cor Secundária',
                    content: SelecionarCor(),
                  ),
                  AccordionComponent(
                    title: 'Cor do botão primário',
                    content: SelecionarCor(),
                  ),
                  AccordionComponent(
                    title: 'Cor do botão secundário',
                    content: SelecionarCor(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
