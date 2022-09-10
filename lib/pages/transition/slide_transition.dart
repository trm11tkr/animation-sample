import 'package:animations_sample/gen/assets.gen.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class SlideTransitionPage extends StatefulWidget {
  const SlideTransitionPage({super.key});

  static const routeName = 'slideTransition';

  @override
  State<SlideTransitionPage> createState() => _SlideTransitionPageState();
}

class _SlideTransitionPageState extends State<SlideTransitionPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 500),
  );

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'SlideTransition',
      child: Stack(
        children: [
          _buildContent(),
          SlideTransition(
            position: _animationController
                .drive(CurveTween(curve: Curves.easeInOut))
                .drive(
                  Tween<Offset>(
                    begin: Offset.zero,
                    end: const Offset(0, 1),
                  ),
                ),
            child: _buildTransitionScreen(),
          ),
        ],
      ),
    );
  }

  Column _buildContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.images.hippo.image(),
        ElevatedButton(
          onPressed: _animationController.reverse,
          child: const Text('CLOSE'),
        )
      ],
    );
  }

  Widget _buildTransitionScreen() {
    return SizedBox.expand(
      child: ColoredBox(
        color: Colors.black,
        child: Center(
          child: ElevatedButton(
            onPressed: _animationController.forward,
            child: const Text('OPEN'),
          ),
        ),
      ),
    );
  }
}
