import 'package:flutter/material.dart';

class NumberRow extends StatelessWidget {
  final int Number;

  const NumberRow({Key? key, required this.Number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: Number
          .toString()
          .split('')
          .map(
            (e) => Image.asset(
          'assets/img/ch10/random_number/$e.png',
          width: 50.0,
          height: 70.0,
        ),
      )
          .toList(),
    );
  }
}
