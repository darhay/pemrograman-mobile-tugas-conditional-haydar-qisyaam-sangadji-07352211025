import 'dart:io';

void main() {
  // Minta inputan dari user
  stdout.write("Masukkan skor ujian (0-100): ");
  String? input = stdin.readLineSync();

  // Cek apakah input kosong
  if (input == null || input.isEmpty) {
    print("Error: Skor tidak boleh kosong!");
    return;
  }

  int? skor = int.tryParse(input);

  // Validasi apakah angka atau bukan
  if (skor == null) {
    print("Error: Input harus berupa angka!");
    return;
  }

  // Validasi rentang skor
  if (skor < 0 || skor > 100) {
    print("Error: Skor harus dalam rentang 0 - 100.");
    return;
  }

  // Tentukan grade menggunakan if-else
  String grade;
  if (skor >= 85 && skor <= 100) {
    grade = "A";
  } else if (skor >= 70) {
    grade = "B";
  } else if (skor >= 60) {
    grade = "C";
  } else if (skor >= 50) {
    grade = "D";
  } else {
    grade = "E";
  }

  // Output
  print("\nSkor Anda: $skor");
  print("Grade Anda: $grade");
}
