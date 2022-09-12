import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesBoundInOutPage extends StatelessWidget {
  const CurvesBoundInOutPage({super.key});

  static const routeName = 'CurvesBoundInOut';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesBoundInOut',
      curve: Curves.bounceInOut,
    );
  }
}
