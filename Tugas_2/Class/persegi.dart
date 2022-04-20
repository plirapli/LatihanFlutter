import 'bangunDatar.dart';

class Persegi extends BangunDatar {
  Persegi(double? n) : super(n);

  @override
  double? keliling() => 4 * super.getN;

  @override
  double? luas() => super.getN * super.getN;
}
