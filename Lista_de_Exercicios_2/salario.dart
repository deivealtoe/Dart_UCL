import 'dart:io';

void main() {
    int numeroDoFuncionario = int.parse(stdin.readLineSync()!);
    int quantidadeDeHorasTrabalhadas = int.parse(stdin.readLineSync()!);
    double valorPorHoraTrabalhada = double.parse(stdin.readLineSync()!);
    
    double salario = quantidadeDeHorasTrabalhadas * valorPorHoraTrabalhada;
    
    print('NUMBER = $numeroDoFuncionario');
    print('SALARY = U\$ ${salario.toStringAsFixed(2)}');
}