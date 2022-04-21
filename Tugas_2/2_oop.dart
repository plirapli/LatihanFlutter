import 'dart:io';

import 'Class/luasLingkaran.dart';
import 'Class/persegi.dart';
import 'Class/lingkaran.dart';

void main(List<String> args) {
  // Class setter getter
  print("Class setter & getter");
  LuasLingkaran luasLingkaran = new LuasLingkaran();
  luasLingkaran.setRadius = 7;

  print("Jari-jari = ${luasLingkaran.getRadius}");
  print(luasLingkaran.luas());
  print("");

  // Polymorphism & Constructor
  print("Polymorism & Constructor");

  stdout.write("Sisi persegi: ");
  String? sPersegi = stdin.readLineSync();

  stdout.write("Jari-jari lingkaran: ");
  String? rLingkaran = stdin.readLineSync();
  print("");

  if (sPersegi != null && rLingkaran != null) {
    Persegi persegi = new Persegi(double.parse(sPersegi));
    Lingkaran lingkaran = new Lingkaran(double.parse(rLingkaran));

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
}
