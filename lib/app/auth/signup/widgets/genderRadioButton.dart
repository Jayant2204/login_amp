import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:login_amp/Global/config.dart';

class GenderRadioButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final void Function() onTap;

  const GenderRadioButton({Key key, this.label, this.isSelected, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Row(
          children: [
            Text(
              label,
              style: theme.accentTextTheme.bodyText2,
            ),
            SizedBox(width: 10),
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? Colors.green : Colors.transparent,
                border: Border.all(color: Constants.kgrey),
              ),
              child: isSelected
                  ? Icon(
                      Icons.check,
                      size: 20,
                      color: Constants.kblack,
                    )
                  : Container(),
            )
          ],
        ),
      ),
    );
  }
}
