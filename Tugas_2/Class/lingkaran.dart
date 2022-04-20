import 'bangunDatar.dart';

class Lingkaran extends BangunDatar {
  double _phi = 3.14;

  Lingkaran(double? _n) : super(_n);

  @override
  double? keliling() => _phi * 2 * super.getN;

  @override
  double? luas() => _phi * super.getN * super.getN;
}
