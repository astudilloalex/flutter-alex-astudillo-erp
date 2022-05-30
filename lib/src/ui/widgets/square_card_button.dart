import 'package:flutter/material.dart';

class SquareCardButton extends StatelessWidget {
  const SquareCardButton({
    Key? key,
    this.icon,
    this.onTap,
    this.sideSize = 120.0,
    this.title,
    this.titleText,
  })  : assert(title != null || titleText != null, 'The title is required'),
        super(key: key);

  final Widget? icon;
  final GestureTapCallback? onTap;
  final double sideSize;
  final Widget? title;
  final String? titleText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sideSize,
      width: sideSize,
      child: Card(
        child: InkWell(
          borderRadius: BorderRadius.circular(16.0),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) icon!,
                if (title != null) Expanded(child: title!),
                if (titleText != null && title == null)
                  Expanded(
                    child: Center(
                      child: Text(
                        titleText!,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
