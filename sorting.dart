import 'dart:io';

List<num> sort(num a, num b, num c, num d) {
  var list = [a, b, c, d];
  list.sort((a, b) => b.compareTo(a));
  return list;
}

//Task3:
//Вывести 4 числа в порядке убывания,
//Например: 1,9,10,7
//Вывод: 10, 9, 7, 1

void tests() {
  var list = sort(2, 3, 4, 1);
  assert(list[0] == 4);
  assert(list[1] == 3);
  assert(list[2] == 2);
  assert(list[3] == 1);
}

void main() async {
  //tests

  print('Enter first number ');
  var a = int.parse(stdin.readLineSync()!);
  print('Enter second number ');
  var b = int.parse(stdin.readLineSync()!);
  print('Enter third number ');
  var c = int.parse(stdin.readLineSync()!);
  print('Enter forth number ');
  var d = int.parse(stdin.readLineSync()!);
  var res = sort(a, b, c, d);

  print('${res[0]}, ${res[1]}, ${res[2]}, ${res[3]}');
}
