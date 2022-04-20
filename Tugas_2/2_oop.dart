import 'Class/luasLingkaran.dart';
import 'Class/persegi.dart';
import 'Class/lingkaran.dart';

void main(List<String> args) async {
  // Class setter getter
  print("Class setter & getter");
  LuasLingkaran luasLingkaran = new LuasLingkaran();
  luasLingkaran.setRadius = 7;

  print("Jari-jari = ${luasLingkaran.getRadius}");
  print(luasLingkaran.luas());

  print("");

  // Polymorphism & Constructor
  print("Polymorism & Constructor");

  Persegi persegi = new Persegi(5);
  Lingkaran lingkaran = new Lingkaran(7.0);

  print("Persegi:");
  print("Sisi = ${persegi.getN}");
  print("Keliling = ${persegi.keliling()}");
  print("Luas = ${persegi.luas()}");

  print("");

  print("Lingkaran:");
  print("Jari-jari = ${lingkaran.getN}");
  print("Keliling = ${lingkaran.keliling()}");
  print("Luas = ${lingkaran.luas()}");
}
