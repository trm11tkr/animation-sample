import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesElasticOutPage extends StatelessWidget {
  const CurvesElasticOutPage({super.key});

  static const routeName = 'CurvesElasticOut';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesElasticOut',
      curve: Curves.elasticOut,
    );
  }
}
