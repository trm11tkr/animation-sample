import 'package:animations_sample/pages/curve/curve_object.dart';
import 'package:flutter/material.dart';

class CurvesEasePage extends StatelessWidget {
  const CurvesEasePage({super.key});

  static const routeName = 'CurvesEase';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEase',
      curve: Curves.ease,
    );
  }
}
