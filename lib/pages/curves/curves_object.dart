import 'package:animations_sample/extension/context_extension.dart';
import 'package:animations_sample/widgets/animation_object.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class CurveObject extends StatefulWidget {
  const CurveObject({
    super.key,
    required this.title,
    required this.curve,
  });

  final String title;
  final Curve curve;

  @override
  State<CurveObject> createState() => _CurveObjectState();
}

class _CurveObjectState extends State<CurveObject>
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
      title: widget.title,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _animationController.forward(from: 0);
        },
        child: const Icon(Icons.refresh),
      ),
      child: Center(
        /// 画面の向きでアニメーションを変更
        child: context.isLandscape
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildRotationTransition(widget.curve),
                  _buildScaleTransition(widget.curve),
                  _buildAlignTransition(widget.curve),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildRotationTransition(widget.curve),
                  _buildScaleTransition(widget.curve),
                  _buildAlignTransition(widget.curve),
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
            /// 画面の向きでアニメーションを変更
            AlignmentTween(
              begin: context.isLandscape
                  ? Alignment.bottomCenter
                  : Alignment.centerLeft,
              end: context.isLandscape
                  ? Alignment.topCenter
                  : Alignment.centerRight,
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
