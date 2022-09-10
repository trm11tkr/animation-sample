import 'package:animations_sample/extension/context_extension.dart';
import 'package:animations_sample/gen/assets.gen.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class FadeTransitionPage extends StatefulWidget {
  const FadeTransitionPage({super.key});

  static const routeName = 'FadeTransition';

  @override
  State<FadeTransitionPage> createState() => _FadeTransitionPageState();
}

class _FadeTransitionPageState extends State<FadeTransitionPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 500),
  );
  var _isScaledUp = false;

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = context.deviceHeight / 3;

    return AppScaffold(
      title: 'FadeTransition',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_isScaledUp) {
            _animationController.reverse();
          } else {
            _animationController.forward();
          }
          _isScaledUp = !_isScaledUp;
        },
        child: const Icon(Icons.play_arrow),
      ),
      child: Column(
        children: [
          SizedBox(
            height: height,
            child: Row(
              children: [
                _buildContent(0, Assets.images.hippoGrey.image()),
                _buildContent(0.2, Assets.images.hippo.image()),
              ],
            ),
          ),
          SizedBox(
            height: height,
            child: Row(
              children: [
                _buildContent(
                  0.4,
                  Assets.images.hippo.image(),
                ),
                _buildContent(
                  0.6,
                  Assets.images.hippoGrey.image(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  FadeTransition _buildContent(double start, Widget child) {
    final width = context.deviceWidth / 2;
    return FadeTransition(
      opacity: _animationController
          .drive(
            CurveTween(
              curve: Interval(
                start,
                start + 0.4,
                curve: Curves.fastOutSlowIn,
              ),
            ),
          )
          .drive(
            Tween<double>(
              begin: 0.1,
              end: 1,
            ),
          ),
      child: SizedBox(width: width, child: child),
    );
  }
}
