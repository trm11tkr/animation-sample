import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseOutExpoPage extends StatelessWidget {
  const CurvesEaseOutExpoPage({super.key});

  static const routeName = 'CurvesEaseOutExpo';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseOutExpo',
      curve: Curves.easeOutExpo,
    );
  }
}
