import 'dart:io';

void main(List<String> args) {
  // Fungsi yang mengembalikan list berisi angka-angka
  print("Fungsi yang mengembalikan list berisi angka-angka");

  stdout.write("Masukkan batas awal: ");
  String? inAwal = stdin.readLineSync();

  stdout.write("Masukkan batas akhir: ");
  String? inAkhir = stdin.readLineSync();

  if (inAwal != null && inAkhir != null) {
    int a = int.parse(inAwal);
    int b = int.parse(inAkhir);

    if (a < b) print(range(a, b));
  }

  print('');

  // List Multidimensi berisi data-data
  print("List Multidimensi berisi data-data");

  stdout.write("Masukkan jumlah data: ");
  String? jml = stdin.readLineSync();

  if (jml != null && int.parse(jml) > 0) print(multiDList(int.parse(jml)));
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
