import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseOutCircPage extends StatelessWidget {
  const CurvesEaseOutCircPage({super.key});

  static const routeName = 'CurvesEaseOutCirc';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseOutCirc',
      curve: Curves.easeOutCirc,
    );
  }
}
