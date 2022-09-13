import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesLinearPage extends StatelessWidget {
  const CurvesLinearPage({super.key});

  static const routeName = 'CurvesLinear';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesLinear',
      curve: Curves.linear,
    );
  }
}
