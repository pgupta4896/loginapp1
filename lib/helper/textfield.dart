import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const Textfield({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          errorText: validator != null ? validator!(controller.text) : null,
        ),
        style: TextStyle(
          color: validator != null
              ? validator!(controller.text) == null
                  ? Colors.green
                  : Colors.red
              : null,
        ),
      ),
    );
  }
}