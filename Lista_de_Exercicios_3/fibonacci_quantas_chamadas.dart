import 'dart:io';

class Fibonacci {
  int contador = 0;
  int quantidadeDeChamadas = 0;
  
  int fibonacci(int n) {
    if (n == 0) {
      quantidadeDeChamadas++;
      return 0;
    } else if(n == 1) {
      quantidadeDeChamadas++;
      contador++;
      return 1;
    } else {
      quantidadeDeChamadas++;
      return fibonacci(n - 1) + fibonacci(n - 2);
    }
  }

  int getContador() {
    return this.contador;
  }

  int getQuantidadeDeChamadas() {
    return this.quantidadeDeChamadas;
  }
}



void main() {
  int n = int.parse(stdin.readLineSync()!);

  Fibonacci f = new Fibonacci();
  f.fibonacci(n);
  print('fib($n) = ${f.getQuantidadeDeChamadas() - 1} calls = ${f.fibonacci(n)}');
}