import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class T3BBTextField extends StatefulWidget {
  final Color? fillColor;
  final Color? borderColor;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? formatters;
  final bool? obscureText;
  final bool? enabled;
  final FocusNode? focusNode;
  final TextEditingController controller;
  final String placeholder;

  const T3BBTextField({
    Key? key,
    required this.controller,
    required this.placeholder,
    this.fillColor,
    this.validator,
    this.keyboardType,
    this.formatters,
    this.obscureText,
    this.borderColor,
    this.enabled,
    this.focusNode
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _StateT3BBTextField();
  }
}

class _StateT3BBTextField extends State<T3BBTextField> {
  getTextColor() {
    if (widget.enabled == null) return const Color(0xFF000000);
    if (widget.enabled!) return const Color(0xFF000000);

    return const Color(0x77000000);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: widget.focusNode,
      obscureText: widget.obscureText ?? false,
      validator: widget.validator,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      inputFormatters: widget.formatters,
      enabled: widget.enabled ?? true,
      style: TextStyle(color: getTextColor()),
      decoration: InputDecoration(
        hintText: widget.placeholder,
        filled: true,
        isDense: true,
        fillColor: widget.fillColor ?? Colors.white,
        contentPadding: const EdgeInsets.all(18),
        enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(0)),
            borderSide: BorderSide(
                color: widget.borderColor ?? const Color(0xFF8D8774),
                width: 1.5
            )
        ),
      ),
    );
  }
}