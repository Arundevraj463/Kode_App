import 'package:flutter/material.dart';
import 'package:webinar/common/common.dart';
import 'package:webinar/config/colors.dart';
import 'package:webinar/config/styles.dart';

class AuthWidget {
  static Widget accountTypeWidget(
      String title, String selectedType, String type, Function onTap,
      {bool studentonly = false}) {
    return Expanded(
        child: GestureDetector(
      onTap: () {
        onTap();
      },
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: getSize().width,
        height: 42,
        decoration: BoxDecoration(
          color: selectedType == type ? green77() : Colors.white,
          borderRadius: studentonly
              ? BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                )
              : borderRadius(radius: 15),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: style14Regular()
              .copyWith(color: selectedType == type ? Colors.white : greyB2),
        ),
      ),
    ));
  }
}
