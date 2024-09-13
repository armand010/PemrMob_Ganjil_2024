void main() {
  var record = (2, true);
  print('Value sebelum diswap : $record');

  var swapRecord = swap(record); //Menukar value dari variabel record
  print('Value setelah diswap : $swapRecord');

  (String, int) mahasiswa = ('Armand Maulana Andika Putra', 2241720090);
  print(mahasiswa);

  var mahasiswa2 = ('Armand Maulana Andika Putra', a: 2, b: true, 2241720090);

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(bool, int) swap((int, bool) record) {
  var (a, b) = record;
  return (b, a);
}
