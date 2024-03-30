import 'package:flutter/material.dart';
import 'package:gem_store/screens/models/orders.dart';
import 'package:gem_store/utilities/constants.dart';
import 'package:gem_store/utilities/textsyles.dart';

Widget screenActionButton(
    {Image? icon,
    Color? backgroundColor,
    Color? textColor,
    VoidCallback? action,
    double buttonSize = 42.0,
    double iconSize = 22.0}) {
  return Container(
    width: buttonSize,
    height: buttonSize,
    child: TextButton(
      style: TextButton.styleFrom(
          padding: EdgeInsets.all(0.0),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
          backgroundColor: backgroundColor),

      child: Icon(
        icon as IconData?,
        size: iconSize,
      ),
      onPressed: action,

      // textColor: textColor,
    ),
  );
}

PreferredSizeWidget tertiaryPageAppbar(
    {required BuildContext context,
    required String title,
    action,
    required double elevation,
    required Image leadingIcon,
    Image? trailingIcon,
    trailingAction,
    List<Widget>? actions}) {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        screenActionButton(
          icon: leadingIcon,
          backgroundColor: themeColor.withOpacity(0.1),
          textColor: themeColor,
          action: action,
        ),
        SizedBox(width: 20.0),
        heading2(color: themeColor, text: title),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              screenActionButton(
                icon: trailingIcon,
                backgroundColor: themeColor.withOpacity(0.1),
                textColor: themeColor,
                action: trailingAction,
              ),
            ],
          ),
        ),
      ],
    ),
    elevation: elevation,
    backgroundColor: Theme.of(context).backgroundColor,
    //Theme.of(context).colorScheme.background,
    automaticallyImplyLeading: false,
    actions: actions,
  );
}
