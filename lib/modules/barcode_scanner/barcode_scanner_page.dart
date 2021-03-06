import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/divider_vertical/divider_vertical.widget.dart';
import 'package:payflow/shared/widgets/social_login/label_button/label_button.dart';

class BarcodeScannerPage extends StatefulWidget {
  BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Escaneie o código de barras",
          style: TextStyles.buttonBackground,
        ),
        leading: BackButton(color: AppColors.background,
        ),
      ),
      body: Column(children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.black,
          )),
          Expanded(child: Container(
            color: Colors.black,
          ))
      ],),
      bottomNavigationBar: Container(
        height: 56,
        child: Row(
          children: [
            Expanded(child: LabelButton(label: "Inserir código do boleto", onPressed: (){})),
            DividerVerticalWidget(),
            Expanded(child: LabelButton(label: "Adicionar da galeria", onPressed: (){})),
          ],
        ),
      )
    );
  }
}
