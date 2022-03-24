import 'dart:io';

void main() {
  double notaA = double.parse(stdin.readLineSync()!);
  double notaB = double.parse(stdin.readLineSync()!);

  double pesoNotaA = 3.5;
  double pesoNotaB = 7.5;

  print('MEDIA = ${((notaA * pesoNotaA + notaB * pesoNotaB) / (pesoNotaA + pesoNotaB)).toStringAsFixed(5)}');
}