import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hint;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final IconData? prefixIcon;

  const CustomTextField({
    super.key,
    this.onChanged,
    this.hint,
    this.controller,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      onChanged: onChanged,
      controller: controller,
      decoration: InputDecoration(
        errorMaxLines: 2,
        contentPadding: const EdgeInsets.all(10),
        prefixIcon: Icon(
          prefixIcon,
          color: const Color(0xff3E515B),
          size: 18,
        ),
        fillColor: Colors.white,
        filled: true,
        hintText: hint,
        isDense: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(width: 0.8, color: Color(0xffE9E9E9)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(width: 1, color: Color(0xffE9E9E9)),
        ),
      ),
    );
  }
}
