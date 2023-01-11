import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String? text;

  const ScreenTitle({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0,end: 1),
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeIn,
      builder: (BuildContext context, double? value, Widget? child) {
        return Opacity(
            opacity: value!,
            child: Padding(
              padding:  EdgeInsets.only(top: value * 20),
              child: child!,
            ));
      },
      child: Text(
        text??"",
        style: const TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
