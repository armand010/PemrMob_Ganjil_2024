void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  names1.add('Armand');
  names2.addAll(['Maulana', '2241720090']);
  names3[0] = 'armand';

  print(names1);
  print(names2);
  print(names3);
}
