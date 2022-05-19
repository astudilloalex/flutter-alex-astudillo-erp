import 'package:alex_astudillo_erp/src/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomDropdownButton<T> extends StatelessWidget {
  const CustomDropdownButton({
    Key? key,
    this.onChanged,
    this.items,
    this.value,
  }) : super(key: key);

  final ValueChanged<T?>? onChanged;
  final List<DropdownMenuItem<T>>? items;
  final T? value;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 300.0),
      child: Theme(
        data: Theme.of(context).copyWith(
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          focusColor: LightColors.primaryVariant.withOpacity(0.5),
        ),
        child: DropdownButtonFormField<T>(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: LightColors.primaryVariant.withOpacity(0.5),
          ),
          isExpanded: true,
          value: value,
          items: items,
          onChanged: onChanged,
          borderRadius: BorderRadius.circular(16.0),
          focusColor: Colors.transparent,
        ),
      ),
    );
  }
}
