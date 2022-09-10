import 'package:animations_sample/extension/context_extension.dart';
import 'package:animations_sample/widgets/animation_object.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class RotationTransitionPage extends StatefulWidget {
  const RotationTransitionPage({super.key});

  static const routeName = 'RotationTransition';

  @override
  State<RotationTransitionPage> createState() => _RotationTransitionPageState();
}

class _RotationTransitionPageState extends State<RotationTransitionPage>
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
    final height = context.deviceHeight / 3;
    return AppScaffold(
      title: 'RotationTransition',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _animationController.forward(from: 0);
        },
        child: const Icon(Icons.refresh),
      ),
      child: Column(
        children: [
          SizedBox(
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTransition(Curves.bounceIn),
                _buildTransition(Curves.easeInCubic)
              ],
            ),
          ),
          SizedBox(
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTransition(Curves.easeOutQuart),
                _buildTransition(Curves.slowMiddle),
              ],
            ),
          ),
        ],
      ),
    );
  }

  RotationTransition _buildTransition(Curve curve) {
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
}
