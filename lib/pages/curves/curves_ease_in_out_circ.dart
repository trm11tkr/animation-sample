import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseInOutCircPage extends StatelessWidget {
  const CurvesEaseInOutCircPage({super.key});

  static const routeName = 'CurvesEaseInOutCirc';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseInOutCirc',
      curve: Curves.easeInOutCirc,
    );
  }
}
