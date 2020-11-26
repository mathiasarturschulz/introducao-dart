import 'dart:io';

void main() {
  print('Atividades - Introdução DART');
  questao();
}

void questao() {
  print('\nFaça um Programa que peça 2 números inteiros e um número real. Calcule e mostre: a) produto do dobro do primeiro com metade do segundo. b) soma do triplo do primeiro com o terceiro. ');

  stdout.write('Informe o 1º número inteiro: ');
  int num1 = int.tryParse(stdin.readLineSync());
  if (num1 == null) {
    print('Valor inválido! ');
    return;
  }

  stdout.write('Informe o 2º número inteiro: ');
  int num2 = int.tryParse(stdin.readLineSync());
  if (num2 == null) {
    print('Valor inválido! ');
    return;
  }

  stdout.write('Informe o 3º número real: ');
  double num3 = double.tryParse(stdin.readLineSync());
  if (num3 == null) {
    print('Valor inválido! ');
    return;
  }

  print('\na) produto do dobro do primeiro com metade do segundo. ');
  print(((num1 * num1) * (num2/2)).toString());

  print('\nb) soma do triplo do primeiro com o terceiro. ');
  print(((num1 * num1 * num1) * num3).toString());
}
