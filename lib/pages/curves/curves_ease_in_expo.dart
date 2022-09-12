import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseInExpoPage extends StatelessWidget {
  const CurvesEaseInExpoPage({super.key});

  static const routeName = 'CurvesEaseInExpo';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseInExpo',
      curve: Curves.easeInExpo,
    );
  }
}
