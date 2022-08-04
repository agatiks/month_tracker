import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../design_values.dart';

class ButtonWidget extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final Function() onPressed;
  final String? icon;

  const ButtonWidget(
      {Key? key,
      required this.backgroundColor,
      required this.text,
      required this.onPressed,
      this.icon,
      this.textColor = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textWidget =
        Text(text, style: DesignValues.bodyPlayfair24(color: textColor));
    final style = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(DesignValues.radius),
      ),
      primary: backgroundColor,
      alignment: Alignment.center,
      padding: DesignValues.regularPadding,
    );
    return Padding(
        padding: DesignValues.regularPadding,
        child: /*icon == null
          ?*/
            ElevatedButton(
          onPressed: onPressed,
          child: icon == null
              ? textWidget
              : Wrap(
                  children: [
                    textWidget,
                    SizedBox(width: DesignValues.paddingSmall),
                    Image.asset(icon!, width: 32, height: 32),
                  ],
                ),
          style: style,
        )
        /*: ElevatedButton.icon(
              onPressed: onPressed,
              icon: Image.asset(icon!, width: 32, height: 32),
              label: textWidget,
        style: style,
            ),*/
        );
  }
}
