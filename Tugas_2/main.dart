import 'dart:async';
import 'dart:io';

import 'bangunDatar.dart';

void main(List<String> args) async {
  // Fungsi yang mengembalikan list berisi angka-angka
  print("Fungsi yang mengembalikan list berisi angka-angka");
  print(range(1, 10));
  print('');

  // List Multidimensi berisi data-data
  print("List Multidimensi berisi data-data");
  // print(multiDList(2));
  print("");

  // Class setter getter
  LuasLingkaran luasLingkaran = new LuasLingkaran();
  luasLingkaran.setRadius = 7;

  print("Jari-jari = ${luasLingkaran.getRadius}");
  print(luasLingkaran.luasLingkaran());
  print("");

  // Polymorphism & Constructor
  print("Polymorism & Constructor");

  Persegi persegi = new Persegi(5);
  Lingkaran lingkaran = new Lingkaran(7);

  print("Persegi:");
  print("Sisi = ${persegi.getN}");
  print("Keliling = ${persegi.keliling()}");
  print("Luas = ${persegi.luas()}");

  print("");

  print("Lingkaran:");
  print("Jari-jari = ${lingkaran.getN}");
  print("Keliling = ${lingkaran.keliling()}");
  print("Luas = ${lingkaran.luas()}");

  print("");

  // Future delay
  print("Future delay");
  print("Nama");
  fungsiDelay(2, "Muhammad Rafli");
  fungsiDelay(1, "Saya");
  await fungsiDelay(3, "");

  // Async, await, future
  print("Async, Await, Future");
  print("Menyanyi, mulai");
  print(await line1());
  print(await line2());
  print(await line3());
}

class LuasLingkaran {
  double _phi = 3.14;
  double? _radius;

  set setRadius(double? _radius) => this._radius = _radius;
  double get getRadius => _radius!;

  double luasLingkaran() => _phi * _radius! * _radius!;
}

// Fungsi yang mengembalikan list berisi angka-angka
List range(int a, int b) => [for (var i = a; i <= b; i++) i];

// List Multidimensi berisi data-data
List multiDList(int n) {
  List<List<String?>> input =
      List.generate(n, (i) => List.filled(4, null), growable: false);

  for (var i = 0; i < n; i++) {
    input[i][0] = "00${i + 1}";

    stdout.write("Input Nama: ");
    input[i][1] = stdin.readLineSync();

    stdout.write("Input Domisili: ");
    input[i][2] = stdin.readLineSync();

    stdout.write("Input Hobi: ");
    input[i][3] = stdin.readLineSync();
    print("");
  }

  return input;
}

// Future delay
Future<void> fungsiDelay(int dur, String? printStr) => Future.delayed(
      Duration(seconds: dur),
      () => print(printStr),
    );

// Async, Await, Future
Future<String> line1() => Future.delayed(
    Duration(seconds: 1), () => "Pelangi-pelangi alangkah indahmu");

Future<String> line2() =>
    Future.delayed(Duration(seconds: 2), () => "Merah kuning hijau");

Future<String> line3() =>
    Future.delayed(Duration(seconds: 1), () => "Di langit yang biru");
