void main() {
  // Nama lengkap dan NIM
  String namaLengkap = 'Armand Maulana Andika Putra';
  String nim = '2241720090';

  // Fungsi untuk memeriksa apakah sebuah bilangan adalah bilangan prima
  bool isPrime(int number) {
    if (number <= 1) return false; // Bilangan 0 dan 1 bukan bilangan prima
    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0)
        return false; // Bukan bilangan prima jika habis dibagi
    }
    return true; // Bilangan prima
  }

  // Looping untuk mencari bilangan prima dari 0 sampai 201
  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print('$i $namaLengkap $nim');
    } else {
      print(i);
    }
  }
}
