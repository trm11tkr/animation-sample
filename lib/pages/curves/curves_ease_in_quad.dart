import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseInQuadPage extends StatelessWidget {
  const CurvesEaseInQuadPage({super.key});

  static const routeName = 'CurvesEaseInQuad';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseInQuad',
      curve: Curves.easeInQuad,
    );
  }
}
