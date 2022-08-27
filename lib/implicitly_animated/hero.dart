import 'package:animations_sample/gen/assets.gen.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

/// TagをWidgetに対して付加し、Page遷移を行うときに滑らかに表示される。
/// ListViewなどからDetailPageに移るときに非常に良いUIだが、テキストの遷移がやや不安定。
/// Text WidgetはMaterial Widgetでラップしないと原因不明の赤い何かがチラついてしまう。

/// AlertDialogに適応するためには、カスタムPageRouteを作成する必要がある。

///https://medium.com/@diegoveloper/flutter-shared-element-transitions-hero-heroes-f1a083cb123a

const _heroTagImage = 'image';
const _heroTagText = 'text';
final _image = Assets.images.hippo.image();
const _text = 'Hippo!';

class HeroPage extends StatelessWidget {
  const HeroPage({super.key});

  static const routeName = 'Hero';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Hero',
      child: InkWell(
        onTap: () => Navigator.of(context).push<void>(
          MaterialPageRoute(builder: (context) => const DetailScreen()),
        ),
        child: SizedBox(
          height: 60,
          child: Row(
            children: [
              Hero(
                tag: _heroTagImage,
                child: ClipOval(child: _image),
              ),
              const SizedBox(
                width: 16,
              ),
              const Hero(
                tag: _heroTagText,
                child: Material(
                  color: Colors.transparent,
                  child: Text(_text),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Detail',
      child: Column(
        children: [
          Hero(
            tag: _heroTagImage,
            child: _image,
          ),
          const SizedBox(height: 16),
          const Hero(
            tag: _heroTagText,
            child: Material(
              color: Colors.transparent,
              child: Text(
                _text,
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
