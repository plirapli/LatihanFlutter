import 'dart:async';

void main(List<String> args) async {
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
