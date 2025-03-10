enum IconAssets {
  addCircle._('$_assetsDirectory/add_circle.svg'),
  chevronLeft._('$_assetsDirectory/chevron_left.svg'),
  dateRange._('$_assetsDirectory/date_range.svg'),
  whatShot._('$_assetsDirectory/what_shot.svg'),
  tune._('$_assetsDirectory/tune.svg'),
  loop._('$_assetsDirectory/loop.svg'),
  warning._('$_assetsDirectory/warning.svg'),
  search._('$_assetsDirectory/search.svg');

  const IconAssets._(this._path);

  final String _path;

  String get path => _path;

  static const _assetsDirectory = 'assets/icons';
}
