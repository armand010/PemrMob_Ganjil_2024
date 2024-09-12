void main() {
  // Fungsi untuk memeriksa apakah sebuah bilangan adalah bilangan prima
  bool isPrime(int number) {
    if (number <= 1) return false;
    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) return false;
    }
    return true;
  }

  // Looping untuk mencari bilangan prima dari 0 sampai 201
  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print('$i Armand Maulana Andika Putra 2241720090');
    } else {
      print(i);
    }
  }
}
