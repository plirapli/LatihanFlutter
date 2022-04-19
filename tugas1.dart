import 'dart:io';

void main(List<String> args) {
  // Membuat kalimat dari beberapa var
  var pertama = "Flutter";
  var kedua = "is";
  var ketiga = "awesome";

  print("1. Membuat kalimat dari beberapa var");
  print("${pertama} ${kedua} ${ketiga} \n");

  // Mengakses kalimat dalam string
  var kal = "Belajar Flutter";
  var contoh = kal[2] + kal[3];
  var newKal = kal.split(' ');

  var kata1 = newKal[0];
  var kata2 = newKal[1];

  print("2. Mengakses kalimat dalam string");
  print("Contoh: ${contoh} \nKata 1: ${kata1} \nKata 2: ${kata2} \n");

  // Input dan Output
  print("3. Input dan Output");
  stdout.write("Masukkan nama depan: ");
  String? inDepan = stdin.readLineSync();
  stdout.write("Masukkan nama belakang: ");
  String? inBelakang = stdin.readLineSync();

  print("\nNama lengkap: ${inDepan} ${inBelakang} \n");

  // Membuat segitiga siku-siku (loop)
  print("4. Membuat segitiga siku-siku (loop)");
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write("*");
    }
    print("");
  }
  print("");

  // Loop dan Conditional
  String? res;

  print("5. Loop dan Conditional");
  for (var i = 1; i <= 20; i++) {
    if (i % 6 == 0) {
      res = "Skip";
    } else if (i % 2 == 0) {
      res = "Genap";
    } else
      res = "Ganjil";

    print("${i} - ${res}");
  }
  print("");

  // Fungsi "Selamat Malam"
  print('6. Fungsi "Selamat Malam"');
  selamatMalam();
  print("");

  // Fungsi parameter nama dan hobby
  print("7. Fungsi dengan parameter nama dan hobby");
  stdout.write("Masukkan Nama: ");
  String? inNama = stdin.readLineSync();
  stdout.write("Masukkan Hobby: ");
  String? inHobby = stdin.readLineSync();

  print("");
  namaHobby(inNama, inHobby);
}

// Fungsi "Selamat Malam"
selamatMalam() {
  print("Selamat Malam");
}

// Fungsi parameter nama dan hobby
namaHobby(String? nama, String? hobby) {
  print("Nama Saya ${nama}, saya memiliki hobby ${hobby}");
}
