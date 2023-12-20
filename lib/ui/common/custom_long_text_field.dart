import 'package:flutter/material.dart';

class CustomLongTextField extends StatefulWidget {
  final String hintText;
  const CustomLongTextField({required this.hintText, super.key});

  @override
  State<CustomLongTextField> createState() => _CustomLongTextFieldState();
}

class _CustomLongTextFieldState extends State<CustomLongTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      expands: true,
      minLines: null,
      maxLines: null,
      textAlignVertical: TextAlignVertical.top,
      decoration: InputDecoration(
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        ),
        filled: true,
        fillColor: Theme.of(context).cardColor,
      ),
      // validator: (String? value) {
      //   if (value == null || value.isEmpty) {
      //     return 'Введите название';
      //   }
      //   return null;
      // },
    );
  }
}
