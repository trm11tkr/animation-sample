import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesElasticInPage extends StatelessWidget {
  const CurvesElasticInPage({super.key});

  static const routeName = 'CurvesElasticIn';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesElasticIn',
      curve: Curves.elasticIn,
    );
  }
}
