import 'dart:io';

int main() {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  
  int x = a + b;
  
  print('X = $x');

  return 0;
}