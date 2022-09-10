import 'package:animations_sample/gen/assets.gen.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class ScaleTransitionPage extends StatefulWidget {
  const ScaleTransitionPage({super.key});

  static const routeName = 'ScaleTransition';

  @override
  State<ScaleTransitionPage> createState() => _ScaleTransitionPageState();
}

class _ScaleTransitionPageState extends State<ScaleTransitionPage>
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
    return AppScaffold(
      title: 'ScaleTransition',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_isScaledUp) {
            _animationController.reverse();
          } else {
            _animationController.forward();
          }
          _isScaledUp = !_isScaledUp;
        },
        child: const Icon(Icons.refresh),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ScaleTransition(
          alignment: Alignment.bottomRight,
          scale: _animationController
              .drive(
                CurveTween(
                  curve: const Interval(0, 0.8, curve: Curves.fastOutSlowIn),
                ),
              )
              .drive(
                Tween<double>(
                  begin: 0.3,
                  end: 1,
                ),
              ),
          child: Assets.images.hippo.image(width: 10),
        ),
      ),
    );
  }
}
