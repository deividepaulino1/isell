import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class SelecionarCor extends StatefulWidget {
  const SelecionarCor({Key? key}) : super(key: key);

  @override
  State<SelecionarCor> createState() => SelecionarCorState();
}

class SelecionarCorState extends State<SelecionarCor> {
  // create some values
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color.fromARGB(255, 145, 0, 218);

  // ValueChanged<Color> callback
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  @override
  Widget build(BuildContext context) {
    return ColorPicker(
      pickerColor: pickerColor,
      onColorChanged: changeColor,
      colorPickerWidth: 260,
      pickerAreaHeightPercent: 0.6,
      enableAlpha: false,
      paletteType: PaletteType.hsl,
      pickerAreaBorderRadius: const BorderRadius.all(Radius.circular(10)),
    );
  }
}
