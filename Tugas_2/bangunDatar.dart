abstract class BangunDatar {
  double? _n;

  BangunDatar(this._n);

  double get getN => _n!;

  double keliling();
  double luas();
}

class Persegi extends BangunDatar {
  Persegi(double? _n) : super(_n);

  @override
  double keliling() => 4 * _n!;

  @override
  double luas() => _n! * _n!;
}

class Lingkaran extends BangunDatar {
  Lingkaran(double? _n) : super(_n);

  double _phi = 3.14;

  @override
  double keliling() => _phi * 2 * _n!;

  @override
  double luas() => _phi * _n! * _n!;
}
