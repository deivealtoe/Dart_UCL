import 'dart:io';

void main() {
  int valorA = int.parse(stdin.readLineSync()!);
  int valorB = int.parse(stdin.readLineSync()!);
  
  int prod = valorA * valorB;
  
  print('PROD = $prod');
}