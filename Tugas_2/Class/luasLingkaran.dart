class LuasLingkaran {
  double _phi = 3.14;
  double? _radius;

  set setRadius(double? _radius) => this._radius = _radius;
  double get getRadius => _radius!;

  double luas() => _phi * _radius! * _radius!;
}
