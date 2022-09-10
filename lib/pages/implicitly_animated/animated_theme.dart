import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

/// 下位ツリーのThemeModeをアニメーションさせることが可能。
/// MaterialAppのThemeもこれで実装されている。

class AnimatedThemePage extends StatefulWidget {
  const AnimatedThemePage({super.key});

  static const routeName = 'animatedTheme';

  @override
  State<AnimatedThemePage> createState() => _AnimatedThemePageState();
}

class _AnimatedThemePageState extends State<AnimatedThemePage> {
  var _isLightTheme = true;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'animatedTheme',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isLightTheme = !_isLightTheme;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
      child: Center(
        child: AnimatedTheme(
          data: _isLightTheme ? ThemeData.light() : ThemeData.dark(),
          duration: const Duration(milliseconds: 500),
          child: const Padding(
            padding: EdgeInsets.all(32),
            child: Card(
              child: Text(
                'Flutter',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
