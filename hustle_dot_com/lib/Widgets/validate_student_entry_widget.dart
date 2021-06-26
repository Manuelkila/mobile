import 'package:flutter/material.dart';

import '../constants.dart';

class ValidateStudentEntry extends StatelessWidget {
  const ValidateStudentEntry({Key key, @required this.textFormWidget})
      : super(key: key);

  final Widget textFormWidget;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 40,
      width: size.width,
      padding: EdgeInsets.all(kDefaultPadding - 15),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 50,
              color: kPrimaryColor.withOpacity(0.20),
            )
          ]),
      child: textFormWidget,
    );
  }
}
