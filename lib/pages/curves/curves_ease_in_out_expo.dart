import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseInOutExpoPage extends StatelessWidget {
  const CurvesEaseInOutExpoPage({super.key});

  static const routeName = 'CurvesEaseInOutExpo';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseInOutExpo',
      curve: Curves.easeInOutExpo,
    );
  }
}
