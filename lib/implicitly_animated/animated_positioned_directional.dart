import 'package:animations_sample/gen/assets.gen.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

/// AnimatedPositionedWidgetとほとんど同じ
/// Positionのサイドをleft,rightではなく、start, endで指定
/// (LTR)や(RTL)など国ごとの違いに配慮

class AnimatedPositionedDirectionalPage extends StatefulWidget {
  const AnimatedPositionedDirectionalPage({super.key});

  static const routeName = 'animatedPositionedDirectional';

  @override
  State<AnimatedPositionedDirectionalPage> createState() =>
      _AnimatedPositionedDirectionalPageState();
}

class _AnimatedPositionedDirectionalPageState
    extends State<AnimatedPositionedDirectionalPage> {
  var _shrunken = true;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'animatedPositionedDirectional',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _shrunken = !_shrunken;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
      child: Center(
        child: Stack(
          children: [
            Assets.images.hippoGrey.image(),
            // nullと数値のアニメーションは非対応
            Directionality(
              textDirection: TextDirection.rtl,
              child: AnimatedPositionedDirectional(
                top: 0,
                start: 0,
                width: _shrunken ? 50 : 300, // 片方をnullにするとエラー
                duration: const Duration(milliseconds: 500),
                child: Assets.images.hippo.image(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
