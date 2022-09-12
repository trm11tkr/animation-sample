import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseInPage extends StatelessWidget {
  const CurvesEaseInPage({super.key});

  static const routeName = 'CurvesEaseIn';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseIn',
      curve: Curves.easeIn,
    );
  }
}
