import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
 final color;
 final textColor;
 final String buttonText;
 final double fontStyle;
 MyButton({this.color, this.textColor,required this.buttonText, required this.fontStyle});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          color: color,
          child: Center(child: Text(buttonText, style: TextStyle(color: textColor, fontSize: fontStyle),),),
        ),
      ),
    );
  }
}
