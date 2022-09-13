import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseInCircPage extends StatelessWidget {
  const CurvesEaseInCircPage({super.key});

  static const routeName = 'CurvesEaseInCirc';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseInCirc',
      curve: Curves.easeInCirc,
    );
  }
}
