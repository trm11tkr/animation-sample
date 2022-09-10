import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class DecoratedBoxTransitionPage extends StatefulWidget {
  const DecoratedBoxTransitionPage({super.key});

  static const routeName = 'DecoratedBoxTransition';

  @override
  State<DecoratedBoxTransitionPage> createState() =>
      _DecoratedBoxTransitionPageState();
}

class _DecoratedBoxTransitionPageState extends State<DecoratedBoxTransitionPage>
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
      title: 'DecoratedBoxTransition',
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
      child: Center(
        child: DecoratedBoxTransition(
          decoration: _animationController
              .drive(
                CurveTween(curve: Curves.easeInExpo),
              )
              .drive(
                DecorationTween(
                  begin: const FlutterLogoDecoration(),
                  end: const FlutterLogoDecoration(
                    style: FlutterLogoStyle.horizontal,
                  ),
                ),
              ),
          child: const SizedBox(
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
