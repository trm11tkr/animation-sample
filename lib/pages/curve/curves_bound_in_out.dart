import 'package:animations_sample/widgets/animation_object.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class CurvesBoundInOutPage extends StatefulWidget {
  const CurvesBoundInOutPage({super.key});

  static const routeName = 'CurvesBoundInOut';

  @override
  State<CurvesBoundInOutPage> createState() => _CurvesBoundInOutPageState();
}

class _CurvesBoundInOutPageState extends State<CurvesBoundInOutPage>
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
      title: 'CurvesBoundInOut',
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
            _buildRotationTransition(Curves.bounceInOut),
            _buildAlignTransition(Curves.bounceInOut),
            _buildScaleTransition(Curves.bounceInOut),
          ],
        ),
      ),
    );
  }

  AlignTransition _buildAlignTransition(Curve curve) {
    return AlignTransition(
      alignment: _animationController
          .drive(
            CurveTween(
              curve: const Interval(0, 1, curve: Curves.easeInCubic),
            ),
          )
          .drive(
            AlignmentTween(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
      child: const AnimationObject(),
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
