import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccordionComponent extends StatefulWidget {
  final String title;
  final Widget content;

  const AccordionComponent({
    Key? key,
    this.title = 'titulo',
    required this.content,
  }) : super(key: key);

  @override
  State<AccordionComponent> createState() => _AccordionComponentState();
}

class _AccordionComponentState extends State<AccordionComponent> {
  bool _showContent = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(children: [
        ListTile(
          title: Text(widget.title),
          trailing: IconButton(
            icon: Icon(
                _showContent ? Icons.arrow_drop_up : Icons.arrow_drop_down),
            onPressed: () {
              setState(() {
                _showContent = !_showContent;
              });
            },
          ),
        ),
        _showContent
            ? Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: widget.content,
              )
            : Container()
      ]),
    );
  }
}
