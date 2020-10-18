import 'package:flutter/material.dart';

class PasswordCriteriaWidget extends StatelessWidget {
  final String label;
  final bool isValid;

  const PasswordCriteriaWidget({Key key, this.label, this.isValid = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(
      children: [
        Icon(isValid ? Icons.check : Icons.close,
            color: isValid ? Colors.green : Colors.red),
        const SizedBox(width: 5),
        Text(
          label,
          style: theme.textTheme.bodyText2
              .copyWith(color: isValid ? Colors.green : Colors.red),
        )
      ],
    );
  }
}
