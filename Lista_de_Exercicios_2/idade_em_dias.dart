import 'dart:io';

void main() {
    int qtdDiasNoAno = 365;
    int qtdDiasNoMes = 30;
    
    int qtdDias = int.parse(stdin.readLineSync()!);
    
    int qtdDeAnos = (qtdDias / qtdDiasNoAno).truncate();
    qtdDias = qtdDias - qtdDiasNoAno * qtdDeAnos;
    
    int qtdDeMeses = (qtdDias / qtdDiasNoMes).truncate();
    qtdDias = qtdDias - qtdDiasNoMes * qtdDeMeses;
    
    print('$qtdDeAnos ano(s)');
    print('$qtdDeMeses mes(es)');
    print('$qtdDias dia(s)');
}