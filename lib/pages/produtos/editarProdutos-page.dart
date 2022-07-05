import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:isell/components/produtos-table/produtos-detail.dart';
import 'package:isell/components/produtos-table/produtos-table-list.dart';
import 'package:isell/components/shared/btn-component.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../components/shared/topBar-component.dart';

class EditarProdutosPage extends StatelessWidget {
  const EditarProdutosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
