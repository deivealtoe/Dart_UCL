import 'dart:io';
import 'dart:math';

void main() {
  double raio = double.parse(stdin.readLineSync()!);
  double n = 3.14159;
  double area = n * pow(raio, 2);
  String areaFixedDecimal = area.toStringAsFixed(4);
  
  print('A=$areaFixedDecimal');
}