Map<String, dynamic> getPersonInfo() {
  return {'name': 'Alice', 'age': 30, 'isMember': true};
}

void main() {
  var personInfo = getPersonInfo();
  print(
      'Name: ${personInfo['name']}, Age: ${personInfo['age']}, Is Member: ${personInfo['isMember']}');
}
