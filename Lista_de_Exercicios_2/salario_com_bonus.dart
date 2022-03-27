import 'dart:io';

void main() {
    // String nome = stdin.readLineSync()!;
    double salarioFixo = double.parse(stdin.readLineSync()!);
    double totalDeVendasNoMes = double.parse(stdin.readLineSync()!);
    
    double percentualDeComissao = 15.00;
    
    double salarioComComissao = salarioFixo + (totalDeVendasNoMes * (percentualDeComissao / 100));
    String salarioComComissaoFixed = salarioComComissao.toStringAsFixed(2);
    
    print('TOTAL = R\$ $salarioComComissaoFixed');
}