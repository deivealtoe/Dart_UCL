import 'dart:io';

class Cedulas {
  Map<int, int> cedulas = new Map();
  int valorInformado = 0;
  
  Cedulas(int valorInformado) {
    this.valorInformado = valorInformado;

    // this.cedulas[200] = 0;
    this.cedulas[100] = 0;
    this.cedulas[50] = 0;
    this.cedulas[20] = 0;
    this.cedulas[10] = 0;
    this.cedulas[5] = 0;
    this.cedulas[2] = 0;
    this.cedulas[1] = 0;
  }

  void exibirDados() {
    this.cedulas.forEach((k, v) => {
      print('$v nota(s) de R\$ ${k.toStringAsFixed(2).replaceAll(".", ",")}')
    });
  }

  void calcular() {
    print(this.valorInformado);
    
    this.cedulas.forEach((k, v) => {
      this.cedulas[k] = this.dividir(k)
    });
  }

  int dividir(int chave) {
    int quantidadeDeNotas = this.valorInformado ~/ chave;
    this.subtrairValorInformado(chave, quantidadeDeNotas);
    return quantidadeDeNotas;
  }

  void subtrairValorInformado(int chave, int quantidadeDeNotas) {
    this.valorInformado -= chave * quantidadeDeNotas;
  }
}

void main() {
  int valorInformado = int.parse(stdin.readLineSync()!);

  Cedulas cedulas = new Cedulas(valorInformado);
  cedulas.calcular();
  cedulas.exibirDados();
}