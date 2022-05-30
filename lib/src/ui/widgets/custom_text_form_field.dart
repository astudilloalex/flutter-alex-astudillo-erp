import 'package:alex_astudillo_erp/src/ui/utilities/text_input_formatters/uppercase_text_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.controller,
    this.inputFormatters,
    this.keyboardType,
    this.labelText,
    this.maxLength,
    this.textCapitalization,
    this.validator,
  }) : super(key: key);

  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final String? labelText;
  final int? maxLength;
  final TextCapitalization? textCapitalization;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
      ),
      inputFormatters: inputFormatters ?? [UpperCaseTextFormatter()],
      keyboardType: keyboardType ?? TextInputType.text,
      maxLength: maxLength,
      textCapitalization: textCapitalization ?? TextCapitalization.characters,
      validator: validator,
    );
  }
}
