void main() {
  // Variabel yang tidak bisa null
  int nonNullVar = 10;

  // Variabel yang bisa null
  int? nullVar;

  print('Non null vari: $nonNullVar');
  print('Null variabel (before assignment): $nullVar');

  // Menyusun null vari
  nullVar = 20;
  print('Null variabel (after assignment): $nullVar');

  // nullVar bisa bernilai null tanpa error
  nullVar = null;
  print('Null variabel (after null assignment): $nullVar');
}
