import 'package:flutter/material.dart';

class T3BBTextButton extends StatelessWidget {
  final String title;
  final Function onPress;
  final TextStyle textStyle;
  final double width;
  final double height;
  final EdgeInsets padding;

  const T3BBTextButton({
    key,
    required this.title,
    required this.onPress,
    required this.textStyle,
    required this.width,
    required this.height,
    required this.padding
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () { onPress(); },
      style: TextButton.styleFrom(
          primary: const Color(0xFF152743),
          minimumSize: Size(width, height),
        padding: padding,
      ),
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }

}