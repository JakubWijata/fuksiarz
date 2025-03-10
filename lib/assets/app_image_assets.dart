enum ImageAssets {
  logo._('$_assetsDirectory/logo.png'),
  card1._('$_assetsDirectory/card_1.png'),
  card2._('$_assetsDirectory/card_2.png'),
  card3._('$_assetsDirectory/card_3.png'),
  card4._('$_assetsDirectory/card_4.png'),
  card5._('$_assetsDirectory/card_5.png');

  const ImageAssets._(this._path);

  final String _path;

  String get path => _path;

  static const _assetsDirectory = 'assets/images';
}
