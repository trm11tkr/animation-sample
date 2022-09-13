import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesFastLinearToSlowEaseInPage extends StatelessWidget {
  const CurvesFastLinearToSlowEaseInPage({super.key});

  static const routeName = 'CurvesFastLinearToSlowEaseIn';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesFastLinearToSlowEaseIn',
      curve: Curves.fastLinearToSlowEaseIn,
    );
  }
}
