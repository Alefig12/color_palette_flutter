// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../utils/color_utils.dart';

class ColorPalette extends StatelessWidget {
  const ColorPalette(
      {Key? key,
      required this.baseColor,
      required this.baseColor2,
      required this.baseColor3,
      required this.baseColor4,
      required this.callback})
      : super(key: key);

  // atributos de la clase, por ejemplo
  final String baseColor;
  final String baseColor2;
  final String baseColor3;
  final String baseColor4;

  // también se puede tener como un atributo un callback, necesiario ya que es un
  // widget sin estado, por ejemplo
  final Function(String) callback;

  @override
  Widget build(BuildContext context) {
    // padding para crear espacio alrededor del widget
    return Padding(
        padding: const EdgeInsets.all(8.0),
        // vamos a mostrar los elementos en un row
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Row(children: [
            Expanded(
              flex: 4,
              child: GestureDetector(
                  onTap: () => callback(baseColor),
                  child: Container(
                    height: 100,
                    color: ColorUtils.FromHex(baseColor),
                  )),
            ),
            Expanded(
              flex: 3,
              child: GestureDetector(
                  onTap: () => callback(baseColor2),
                  child: Container(
                    height: 100,
                    color: ColorUtils.FromHex(baseColor2),
                  )),
            ),
            Expanded(
              flex: 2,
              child: GestureDetector(
                  onTap: () => callback(baseColor3),
                  child: Container(
                    height: 100,
                    color: ColorUtils.FromHex(baseColor3),
                  )),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                  onTap: () => callback(baseColor4),
                  child: Container(
                    height: 100,
                    color: ColorUtils.FromHex(baseColor4),
                  )),
            )
          ]),
        ));
  }
}
