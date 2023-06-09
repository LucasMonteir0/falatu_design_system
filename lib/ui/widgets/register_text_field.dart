import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterTextField extends StatelessWidget {
  const RegisterTextField({
    Key? key,
    this.onTap,
    this.onChanged,
    this.focusNode,
    this.hintText,
    this.errorText,
    this.controller,
    this.inputFormatters,
    this.obscureText = false,
    this.validator,
    this.helperText,
    this.labelText,
  }) : super(key: key);

  final VoidCallback? onTap;
  final void Function(String)? onChanged;
  final String? hintText;
  final String? errorText;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final String? helperText;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 40,
        child: TextFormField(
          onTap: onTap,
          onChanged: onChanged,
          controller: controller,
          focusNode: focusNode,
          obscureText: obscureText,
          inputFormatters: inputFormatters,
          validator: validator,
          decoration: InputDecoration(
            helperText: helperText,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
            hintText: hintText,
            errorText: errorText,
            labelText: labelText,
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                borderSide: BorderSide(color: Colors.deepPurple, width: 1)),
            errorBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              borderSide: BorderSide(color: Colors.red[700]!, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                borderSide:
                    BorderSide(color: Colors.deepPurple[800]!, width: 2)),
          ),
        ),
      ),
    );
  }
}
