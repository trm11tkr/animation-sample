import 'package:animations_sample/gen/assets.gen.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class AlignTransitionPage extends StatefulWidget {
  const AlignTransitionPage({super.key});

  static const routeName = 'AlignTransition';

  @override
  State<AlignTransitionPage> createState() => _AlignTransitionPageState();
}

class _AlignTransitionPageState extends State<AlignTransitionPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 500),
  );

  /// 移動したかどうか
  var _isMoved = false;

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'AlignTransition',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /// _animationController.status == AnimationStatus.completedのように
          /// controllerのアニメーション状態でも分岐できる
          if (_isMoved) {
            _animationController.reverse();
          } else {
            _animationController.forward();
          }
          _isMoved = !_isMoved;
        },
        child: const Icon(Icons.play_arrow),
      ),
      child: Stack(
        children: [
          AlignTransition(
            alignment: _animationController
                .drive(
                  CurveTween(
                    curve: const Interval(0.4, 1, curve: Curves.easeInCubic),
                  ),
                )
                .drive(
                  AlignmentTween(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
            child: Assets.images.hippoGrey.image(width: 200),
          ),
          AlignTransition(
            alignment: _animationController
                .drive(
                  CurveTween(
                    curve: const Interval(0, 0.6, curve: Curves.fastOutSlowIn),
                  ),
                )
                .drive(
                  AlignmentTween(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
            child: Assets.images.hippo.image(width: 200),
          ),
        ],
      ),
    );
  }
}
