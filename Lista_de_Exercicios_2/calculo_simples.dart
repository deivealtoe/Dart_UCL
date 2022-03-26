import 'dart:io';

class Produto {
  int codigo = 0;
  int quantidade = 0;
  double valorUnitario = 0;
  
  Produto(int codigo, int quantidade, double valorUnitario) {
    this.codigo = codigo;
    this.quantidade = quantidade;
    this.valorUnitario = valorUnitario;
  }

  double getValorTotal() {
    return this.quantidade * this.valorUnitario;
  }
}

double getValorTotalDosProdutos(Produto primeiroProduto, Produto segundoProduto) {
  return primeiroProduto.getValorTotal() + segundoProduto.getValorTotal();
}

void main() {
  String linhaLida_1 = stdin.readLineSync()!;
  String linhaLida_2 = stdin.readLineSync()!;

  List<String> dadosList_1 = linhaLida_1.split(" ");
  List<String> dadosList_2 = linhaLida_2.split(" ");

  Produto primeiroProduto = new Produto(int.parse(dadosList_1[0]), int.parse(dadosList_1[1]), double.parse(dadosList_1[2]));
  Produto segundoProduto = new Produto(int.parse(dadosList_2[0]), int.parse(dadosList_2[1]), double.parse(dadosList_2[2]));

  print('VALOR A PAGAR: R\$ ${getValorTotalDosProdutos(primeiroProduto, segundoProduto).toStringAsFixed(2)}');
}

