import 'dart:io';

main() {
  double notaA = double.parse(stdin.readLineSync()!);
  double notaB = double.parse(stdin.readLineSync()!);
  double notaC = double.parse(stdin.readLineSync()!);

  double pesoNotaA = 2.0;
  double pesoNotaB = 3.0;
  double pesoNotaC = 5.0;

  String mediaPonderadaCalculada = ((notaA * pesoNotaA + notaB * pesoNotaB + notaC * pesoNotaC) / (pesoNotaA + pesoNotaB + pesoNotaC)).toStringAsFixed(1);

  print('MEDIA = $mediaPonderadaCalculada');
}