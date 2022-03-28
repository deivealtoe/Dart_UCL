import 'dart:io';
import 'dart:math';

class Triangulo {
  List<String> inputOriginal;
  double a;
  double b;
  double c;

  Triangulo(this.inputOriginal, double this.a, double this.b, double this.c);

  void mostrarTipo() {
    if (this.naoFormaTriangulo()) {
      print('NAO FORMA TRIANGULO');
    }

    if (this.trianguloRetangulo()) {
      print('TRIANGULO RETANGULO');
    }

    if (this.trianguloObtusangulo()) {
      print('TRIANGULO OBTUSANGULO');
    }

    if (this.trianguloAcutangulo()) {
      print('TRIANGULO ACUTANGULO');
    }

    if (this.trianguloEquilatero()) {
      print('TRIANGULO EQUILATERO');
    }

    if (this.trianguloIsosceles()) {
      print('TRIANGULO ISOSCELES');
    }
  }

  bool naoFormaTriangulo() {
    return this.a >= this.b + this.c;
  }

  bool trianguloRetangulo() {
    return pow(this.a, 2) == pow(this.b, 2) + pow(this.c, 2);
  }

  bool trianguloObtusangulo() {
    return pow(this.a, 2) > pow(this.b, 2) + pow(this.c, 2);
  }

  bool trianguloAcutangulo() {
    return pow(this.a, 2) < pow(this.b, 2) + pow(this.c, 2);
  }

  bool trianguloEquilatero() {
    return this.a == this.b && this.b == this.c;
  }

  bool trianguloIsosceles() {
    int contador = 0;

    if (this.a == this.b) {
      contador++;
    }

    if (this.b == this.c) {
      contador++;
    }

    if (this.a == this.c) {
      contador++;
    }

    return contador == 1;
  }
}

main() {
  List<String> input = stdin.readLineSync()!.split(" ");

  Triangulo triangulo = new Triangulo(input, double.parse(input[0]), double.parse(input[1]), double.parse(input[2]));
  triangulo.mostrarTipo();
}