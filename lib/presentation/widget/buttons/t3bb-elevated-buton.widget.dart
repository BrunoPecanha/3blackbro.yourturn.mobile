import 'package:flutter/material.dart';

class T3BBElevatedButton extends StatefulWidget {
  final Widget child;
  final Color color;
  final Color borderColor;
  final double width;
  final double height;
  final double borderRadius;
  final EdgeInsets? padding;

  final Function onPress;

  const T3BBElevatedButton({
    Key? key,
    required this.child,
    required this.color,
    required this.borderColor,
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.onPress,
    this.padding
  }) : super(
    key: key,
  );

  @override
  State<T3BBElevatedButton> createState() {
    return _T3BBElevatedButtonState();
  }
}

class _T3BBElevatedButtonState extends State<T3BBElevatedButton> {

  ButtonStyle getButtonStyle() {
    return ElevatedButton.styleFrom(
      primary: widget.color,
      minimumSize: Size(widget.width, widget.height),
      padding: widget.padding ?? const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
      ),
      side: BorderSide(
        color: widget.borderColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: ElevatedButton(
      style: getButtonStyle(),
      onPressed: () { widget.onPress(); },
      child: widget.child,
    ));
  }
}