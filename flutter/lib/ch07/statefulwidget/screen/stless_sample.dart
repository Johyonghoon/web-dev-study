import 'package:flutter/material.dart';

class StlessSample extends StatelessWidget {
  final Color color;

  const StlessSample({
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      color: color,
    );
  }
}
