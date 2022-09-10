import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

/// 以下で用意されているアイコンのアニメーション
/// https://github.com/flutter/flutter/tree/master/packages/flutter/lib/src/material/animated_icons/data

class AnimatedIconPage extends StatefulWidget {
  const AnimatedIconPage({super.key});

  static const routeName = 'AnimatedIcon';

  @override
  State<AnimatedIconPage> createState() => _AnimatedIconPageState();
}

class _AnimatedIconPageState extends State<AnimatedIconPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 500),
  );

  var _playButtonEnabled = true;

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _play() async {
    setState(() {
      _playButtonEnabled = false;
    });
    // forwardでアニメーションを開始(from: 0~1で変化の開始時点を指定)
    await _animationController.forward(from: 0);
    // 変化してからの待機時間
    await Future<void>.delayed(const Duration(seconds: 1));
    // reverse滑らかに元に戻る
    await _animationController.reverse();
    setState(() {
      _playButtonEnabled = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'AnimatedIcon',
      floatingActionButton: _playButtonEnabled
          ? FloatingActionButton(
              onPressed: _play,
              child: const Icon(Icons.play_arrow),
            )
          : null,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buttonAnimatedIcon(
              AnimatedIcons.add_event,
              label: 'add_event',
            ),
            _buttonAnimatedIcon(
              AnimatedIcons.pause_play,
              label: 'pause_play',
            ),
            _buttonAnimatedIcon(
              AnimatedIcons.close_menu,
              label: 'close_menu',
            ),
            _buttonAnimatedIcon(
              AnimatedIcons.search_ellipsis,
              label: 'search_ellipsis',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buttonAnimatedIcon(AnimatedIconData icon, {required String label}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedIcon(
          icon: icon,
          progress: _animationController,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(label),
      ],
    );
  }
}
