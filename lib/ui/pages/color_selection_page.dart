// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

import '../../utils/color_utils.dart';
import '../widgets/color_palette.dart';

class ColorSelectionPage extends StatelessWidget {
  const ColorSelectionPage({Key? key}) : super(key: key);

  void showDialog() {
    Get.dialog(const AlertDialog(
      title: Text('Flutter'),
      content: Text('Dialog'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Color palette app'),
          actions: [
            IconButton(onPressed: showDialog, icon: Icon(Icons.info_outline))
          ],
        ),
        // https://colorhunt.co/
        body: SingleChildScrollView(
          child: Column(children: [
            ColorPalette(
              callback: showColor,
              baseColor: '#8AACFF',
              baseColor2: '#626FE6',
              baseColor3: '#6D42C7',
              baseColor4: '#E85B48',
            ),
            ColorPalette(
              callback: showColor,
              baseColor: '#104455',
              baseColor2: '#0A3442',
              baseColor3: '#3AD3CD',
              baseColor4: '#7FFFD6',
            ),
            ColorPalette(
              callback: showColor,
              baseColor: '#FFF395',
              baseColor2: '#7459DC',
              baseColor3: '#41B3FF',
              baseColor4: '#63F5EF',
            ),
            ColorPalette(
              callback: showColor,
              baseColor: '#A66CFF',
              baseColor2: '#9C9EFE',
              baseColor3: '#AFB4FF',
              baseColor4: '#B1E1FF',
            ),
          ]),
        ));
  }

  // está es la función que será llamada con cada click a un ColorPalette
  void showColor(String value) {
    Clipboard.setData(ClipboardData(text: value));
    Get.snackbar(
      'Color palette',
      'Valor copiado',
      backgroundColor: ColorUtils.FromHex(value),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
