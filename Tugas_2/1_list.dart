import 'dart:io';

void main(List<String> args) {
  // Fungsi yang mengembalikan list berisi angka-angka
  print("Fungsi yang mengembalikan list berisi angka-angka");
  print(range(1, 10));
  print('');

  // List Multidimensi berisi data-data
  print("List Multidimensi berisi data-data");
  // print(multiDList(2));
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
