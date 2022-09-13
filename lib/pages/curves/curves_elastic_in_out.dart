import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesElasticInOutPage extends StatelessWidget {
  const CurvesElasticInOutPage({super.key});

  static const routeName = 'CurvesElasticInOut';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesElasticInOut',
      curve: Curves.elasticInOut,
    );
  }
}
