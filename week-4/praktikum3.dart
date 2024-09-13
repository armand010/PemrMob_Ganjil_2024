void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  //Menambahkan key Nama dengan value "Armand Maulana Andika Putra"
  //pada map gifts dan nobleGases
  gifts['Nama'] = "Armand Maulana Andika Putra";
  nobleGases[224] = 2241720090;

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtledoves';
  mhs1['fifth'] = 'golden rings';
  //Menambahkan key Name dengan value "Armand Maulana Andika Putra"
  mhs1['Name'] = 'Armand Maulana Andika Putra';

  var mhs2 = Map<int, String>();
  mhs2[2] = 'helium';
  mhs2[10] = 'neon';
  mhs2[18] = 'argon';
  //Menambahkan key 2241720090 dengan value "Armand Maulana Andika Putra"
  mhs2[2241720090] = 'Armand Maulana Andika Putra';

  print(mhs1);
  print(mhs2);
}
