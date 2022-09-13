import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseInQuintPage extends StatelessWidget {
  const CurvesEaseInQuintPage({super.key});

  static const routeName = 'CurvesEaseInQuint';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseInQuint',
      curve: Curves.easeInQuint,
    );
  }
}
