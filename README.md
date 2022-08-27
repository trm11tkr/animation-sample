# animations_sample

monoさんが手がける[flutter-animations](https://github.com/mono0926/flutter-animations)を手元で実行して習得するリポジトリ。</br>

### ImplicitlyAnimatedWidget sample

AnimatedXxxというWidgetでImplicitlyAnimatedWidgetを継承している。
滑らかな変化を実現。</br>
ほとんどがコントローラーを必要としないので手軽に実装可能。

|Widget|効果|
|:---:|:---:|
|AnimatedAlign|子Widgetの場所(Alignment)を滑らかに変化|
|AnimatedContainer|Containerのプロパティを滑らかに変化</br>高機能|
|AnimatedDefaultTextStyle|下位ツリーのTextStyleを滑らかに変化|
|AnimatedOpacity|透明度を滑らかに変化|
|AnimatedPadding|Paddingを滑らかに変化|
|AnimatedPhysicalModel|elevation(影)を滑らかに変化</br>浮き上がってくるような印象|
|AnimatedPosition|Position Widgetのアニメーション</br>個人的に好み|
|AnimatedPositionDirection|AnimatedPositionと動作は同じ。</br>(LTR)や(RTL)など国ごとの違いに配慮|
|AnimatedTheme|Themeを滑らかに変化。MaterialAppのThemeModeもこれで実装されている|

番外編（ImplicitlyAnimatedWidgetを継承していないが、実装はシンプル）
|Widget|効果|
|:---:|:---:|
|AnimatedCrossFade|2つのWidgetを指定し、滑らかに繋いでくれる</br>２つのWidgetのサイズが異なると不自然になる|
|AnimatedIcon|事前に用意されたアイコン変化のアニメーション|
|Hero|Widgetにタグを付与し、ページを跨いだ際にそのままついてくるような印象|
