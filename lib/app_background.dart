import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  AppBackground({this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/white.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: this.child,
    );
  }
}
