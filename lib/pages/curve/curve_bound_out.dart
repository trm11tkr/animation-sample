import 'package:animations_sample/pages/curve/curve_object.dart';
import 'package:flutter/material.dart';

class CurvesBoundOutPage extends StatelessWidget {
  const CurvesBoundOutPage({super.key});

  static const routeName = 'CurvesBoundOut';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesBoundOut',
      curve: Curves.bounceOut,
    );
  }
}
