import 'dart:io';

void main() {
  print('Atividades - Introdução DART');
  questao();
}

void questao() {
  print('\n3) Escreva um algoritmo para ler o salário mensal atual de um funcionário e o percentual de reajuste. Calcular e escrever o valor do novo salário.');

  stdout.write('Informe o salário mensal atual do funcionário: ');
  double salario = double.tryParse(stdin.readLineSync());
  if (salario == null || salario < 0) {
    print('Valor inválido! ');
    return;
  }

  stdout.write('Informe o percentual de reajuste (%): ');
  double reajuste = double.tryParse(stdin.readLineSync());
  if (reajuste == null) {
    print('Número inválido! ');
    return;
  }

  double novoSalario = salario * (1 + (reajuste / 100));
  print('Novo salário: ' + novoSalario.toString());
}
