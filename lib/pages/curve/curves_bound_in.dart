import 'package:animations_sample/widgets/animation_object.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class CurvesBoundInPage extends StatefulWidget {
  const CurvesBoundInPage({super.key});

  static const routeName = 'CurvesBoundIn';

  @override
  State<CurvesBoundInPage> createState() => _CurvesBoundInPageState();
}

class _CurvesBoundInPageState extends State<CurvesBoundInPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 3000),
  );

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'CurvesBoundIn',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _animationController.forward(from: 0);
        },
        child: const Icon(Icons.refresh),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildRotationTransition(Curves.bounceIn),
            _buildScaleTransition(Curves.bounceIn),
          ],
        ),
      ),
    );
  }

  RotationTransition _buildRotationTransition(Curve curve) {
    return RotationTransition(
      alignment: Alignment.bottomCenter,
      turns: _animationController
          .drive(
            CurveTween(
              curve: curve,
            ),
          )
          .drive(
            Tween<double>(
              begin: 0,
              end: 1,
            ),
          ),
      child: const AnimationObject(),
    );
  }

  ScaleTransition _buildScaleTransition(Curve curve) {
    return ScaleTransition(
      alignment: Alignment.bottomRight,
      scale: _animationController
          .drive(
            CurveTween(
              curve: Interval(0, 1, curve: curve),
            ),
          )
          .drive(
            Tween<double>(
              begin: 0,
              end: 1,
            ),
          ),
      child: const AnimationObject(),
    );
  }
}
