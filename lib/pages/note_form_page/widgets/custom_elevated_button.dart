import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
  final String text;
  final IconData? iconData;
  final Function()? function;
  const CustomElevatedButton({
    required this.text,
    this.iconData,
    super.key,
    this.function,
  });

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        (widget.function == null) ? null : widget.function!();
      },
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Icon(widget.iconData),
          Center(
            child: Text(
              widget.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
