import 'dart:io';

class Cedulas {
  Map<int, int> cedulas = new Map();
  Map<double, int> moedas = new Map();
  
  double valorInformado = 0;
  
  Cedulas(double valorInformado) {
    this.valorInformado = valorInformado;

    this.cedulas[100] = 0;
    this.cedulas[50] = 0;
    this.cedulas[20] = 0;
    this.cedulas[10] = 0;
    this.cedulas[5] = 0;
    this.cedulas[2] = 0;

    this.moedas[1.00] = 0;
    this.moedas[0.50] = 0;
    this.moedas[0.25] = 0;
    this.moedas[0.10] = 0;
    this.moedas[0.05] = 0;
    this.moedas[0.01] = 0;
  }

  void exibirDados() {
    print('NOTAS:');
    this.cedulas.forEach((k, v) => {
      print('$v nota(s) de R\$ ${k.toStringAsFixed(2)}')
    });

    print('MOEDAS:');
    this.moedas.forEach((k, v) => {
      print('$v moeda(s) de R\$ ${k.toStringAsFixed(2)}')
    });
  }

  void calcular() {
    this.cedulas.forEach((k, v) => {
      this.cedulas[k] = this.dividir(k)
    });
    
    this.moedas.forEach((k, v) => {
      this.calcularMoedas(k)
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

  void calcularMoedas(double chave) {
    if (double.parse(this.valorInformado.toStringAsFixed(2)) >= chave) {
      this.valorInformado -= chave;
      this.moedas[chave] = this.moedas[chave]! + 1;
      this.calcularMoedas(chave);
    }
  }
}

void main() {
  double valorInformado = double.parse(stdin.readLineSync()!);

  Cedulas cedulas = new Cedulas(valorInformado);
  cedulas.calcular();
  cedulas.exibirDados();
}