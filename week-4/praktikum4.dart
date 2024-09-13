void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  var listNim = [2241720090]; //variabel listNim dengan value 2241720090

  print(list);
  print(list2);
  print(list2.length);

  list = [1, 2];
  print(list);
  var list3 = [
    0,
    ...listNim
  ]; //Menambahkan value dari var listNim dengan Spread Operators
  print(list3);
  print(list3.length);

  var nav = ['Home', 'Furniture', 'Plants'];
  print(nav);

  //Membuat fungsi if dengan kondisi variabel promoActive bernilai true
  // ignore: unused_local_variable
  bool promoActive;
  if (promoActive = true) {
    nav.add('Outlet');
  }
  print(nav);

  var nav2 = ['Home', 'Furniture', 'Plants'];
  print(nav2);

  var role = 'manager'; //variabel role dengan value 'manager'
  //Membuat fungsi if dengan kondisi variabel role dengan case 'manager'
  if (role case 'manager') {
    nav2.add('Inventory'); //Menambahkan value 'Inventory' pada var nav2
  }
  print(nav2);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
