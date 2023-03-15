import 'package:flutter/material.dart';

class Inputs extends StatefulWidget {
  final String? labelNombre;
  final Color labelStyleColor;
  final bool obscureText;
  final IconData? mainIcon;
  final Color iconColor;
  final String helperText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  const Inputs(
      {this.labelNombre,
      this.labelStyleColor = Colors.pink,
      this.obscureText = false,
      this.mainIcon,
      this.iconColor = Colors.pink,
      this.helperText = "",
      this.prefixIcon,
      this.suffixIcon,
      super.key});

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: widget.obscureText,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          icon: Icon(widget.mainIcon),
          iconColor: widget.iconColor,
          labelText: widget.labelNombre,
          labelStyle: TextStyle(color: widget.labelStyleColor),
          helperText: widget.helperText,
          contentPadding: const EdgeInsets.all(20),
          prefixIcon: Icon(widget.prefixIcon),
          suffixIcon: Icon(widget.suffixIcon),
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
