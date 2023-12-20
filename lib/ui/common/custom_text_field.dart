import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  const CustomTextField({required this.hintText, super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 1,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        filled: true,
        fillColor: Theme.of(context).cardColor,
      ),
      // Сделаю :)
      // validator: (String? value) {
      //   if (value == null || value.isEmpty) {
      //     return 'Введите название';
      //   }
      //   return null;
      // },
    );
  }
}
