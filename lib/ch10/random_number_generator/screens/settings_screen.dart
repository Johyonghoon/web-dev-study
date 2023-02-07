import 'package:flutter/material.dart';
import 'package:flutter_ios/ch10/random_number_generator/constants/colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double maxNumber = 10000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PRIMARY_COLOR,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Row(
                      children: maxNumber
                          .toInt()
                          .toString()
                          .split('')
                          .map(
                            (e) => Image.asset(
                              'assets/img/ch10/random_number/$e.png',
                              width: 50.0,
                              height: 70.0,
                            ),
                          )
                          .toList()),
                ),
                Slider(
                  value: maxNumber,
                  min: 10000,
                  max: 1000000,
                  onChanged: (double val) {
                    setState(() {
                      maxNumber = val;
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: RED_COLOR),
                  child: Text('저장!'),
                ),
              ],
            ),
          ),
        ));
  }
}
