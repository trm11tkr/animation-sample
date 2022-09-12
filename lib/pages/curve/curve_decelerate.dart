import 'package:animations_sample/pages/curve/curve_object.dart';
import 'package:flutter/material.dart';

class CurvesDeceleratePage extends StatelessWidget {
  const CurvesDeceleratePage({super.key});

  static const routeName = 'CurvesDecelerate';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesDecelerate',
      curve: Curves.decelerate,
    );
  }
}
