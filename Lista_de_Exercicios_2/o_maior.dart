import 'dart:io';

main() {
  String linhaLida = stdin.readLineSync()!;

  int a = int.parse(linhaLida.split(" ")[0]);
  int b = int.parse(linhaLida.split(" ")[1]);
  int c = int.parse(linhaLida.split(" ")[2]);

  num maiorAB = (a + b + (a - b).abs()) / 2;

  num maior = 0;
  if (maiorAB < c) {
    maior = c;
  } else {
    maior = maiorAB;
  }

  print('${maior.toStringAsFixed(0)} eh o maior');
}