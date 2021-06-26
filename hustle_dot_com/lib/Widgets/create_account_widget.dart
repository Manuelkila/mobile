import 'package:flutter/material.dart';

import '../constants.dart';

class CreateAccountWidget extends StatelessWidget {
  const CreateAccountWidget({
    Key key,
    this.createString,
    this.accountString,
  }) : super(key: key);

  final String createString;
  final String accountString;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.4,
      width: size.width,
      child: Stack(children: [
        ClipPath(
          clipper: MyClipper(),
          child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle, color: kPrimaryColor)),
        ),
        Positioned(
            top: 130,
            left: 20,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    createString,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Text(
                    accountString,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            )),
      ]),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 45);
    final fCPoint =
        Offset(size.width * 0.20, size.height - (size.height * 0.30));
    final fEPoint = Offset(size.width - (size.width * 0.55), size.height - 60);
    path.quadraticBezierTo(fCPoint.dx, fCPoint.dy, fEPoint.dx, fEPoint.dy);
    final sCPoint = Offset(size.width - (size.width * 0.20), size.height);
    final sEPoint = Offset(size.width, size.height - 50);
    path.quadraticBezierTo(sCPoint.dx, sCPoint.dy, sEPoint.dx, sEPoint.dy);
    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
